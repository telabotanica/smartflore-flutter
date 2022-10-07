import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

part 'trail_event.dart';
part 'trail_state.dart';

class TrailBloc extends Bloc<TrailEvent, TrailState> {
  final TrailRepo trailsRepo;
  final MapBloc mapBloc;
  StreamSubscription? mapSubscription;

  TrailBloc(this.trailsRepo, this.mapBloc) : super(TrailInitialState()) {
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
        TrailDetails? localTrail = await box.get('trails_${event.id}');
        if (localTrail != null) {
          emit(TrailLoadedState(trail: localTrail));
        }

        TrailDetails? trail = await trailsRepo.getTrailData(event.id);
        if (trail != null) {
          await box.put('trails_${event.id}', trail);
          emit(TrailLoadedState(trail: trail));
        } else {
          emit(TrailErrorState());
        }
      }
    });
  }

  @override
  Future<void> close() {
    mapSubscription?.cancel();
    return super.close();
  }
}
