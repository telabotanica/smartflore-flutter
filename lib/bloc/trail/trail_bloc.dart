import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

part 'trail_event.dart';
part 'trail_state.dart';

class TrailBloc extends Bloc<TrailEvent, TrailState> {
  final TrailRepo trailRepo;
  final MapBloc mapBloc;
  StreamSubscription? mapSubscription;

  TrailBloc(this.trailRepo, this.mapBloc) : super(TrailInitialState()) {
    // When asking for trail preview we need to both change mapMode and load trail data.

    mapSubscription = mapBloc.stream.listen((state) {
      if (state is OnRequestTrailPreview) {
        add(LoadTrailDataEvent(id: state.trailID));
      }
    });

    on<TrailEvent>((event, emit) async {
      if (event is LoadTrailDataEvent) {
        emit(TrailLoadingState());
        var box = await Hive.openBox('trail');
        TrailDetails? localTrail = await box.get('trail_${event.id}');
        if (localTrail != null) {
          emit(TrailLoadedState(trail: localTrail));
        }

        TrailDetails? trail = await trailRepo.getTrailData(event.id);
        if (trail != null) {
          await box.put('trail_${event.id}', trail);

          emit(TrailLoadedState(trail: trail));
        } else {
          emit(TrailErrorState());
        }
      }

      if (event is SaveTrailLocallyEvent) {
        emit(LocalSaveTrailInitialState());

        BatchedTrail? batchedTrail =
            await trailRepo.getTrailBatchedData(event.id);
        if (batchedTrail != null) {
          // save trial in the trail box
          var boxTrail = await Hive.openBox('trail');
          await boxTrail.put('trail_${event.id}', batchedTrail.trail);
          // save every single taxon of the trail in the taxon box
          var boxTaxon = await Hive.openBox('taxon');
          batchedTrail.taxonList.map((taxon) async {
            boxTaxon.put('taxon_${taxon.nameId}', taxon);
            // batch download image files.
            taxon.tabs[0].images?.map((image) {
              _saveImage(image);
            });
          });
        }
      }
    });
  }

  @override
  Future<void> close() {
    mapSubscription?.cancel();
    return super.close();
  }

  void _saveImage(ImageAPI image) {}
}
