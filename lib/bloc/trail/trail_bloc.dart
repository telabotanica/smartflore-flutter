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
  final TrailRepo trailRepo;
  final MapBloc mapBloc;
  StreamSubscription? mapSubscription;
  Box<TrailDetails> trailBox;

  TrailBloc(this.trailRepo, this.mapBloc, this.trailBox)
      : super(TrailInitialState()) {
    // When asking for trail preview we need to both change mapMode and load trail data.

    mapSubscription = mapBloc.stream.listen((state) {
      state.maybeWhen(
          onRequestTrailPreview: (int trailID) {
            add(LoadTrailDataEvent(id: trailID));
          },
          orElse: () {});
    });

    on<TrailEvent>((event, emit) async {
      if (event is LoadTrailDataEvent) {
        emit(TrailLoadingState());
        TrailDetails? localTrail = trailBox.get('trail_${event.id}');
        if (localTrail != null) {
          emit(TrailLoadedState(trail: localTrail));
        }

        TrailDetails? trail = await trailRepo.getTrailData(event.id);
        if (trail != null) {
          await trailBox.put('trail_${event.id}', trail);

          emit(TrailLoadedState(trail: trail));
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
