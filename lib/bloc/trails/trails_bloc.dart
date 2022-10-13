import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';

part 'trails_event.dart';
part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsDataState> {
  final TrailsRepo trailsRepo;
  final Box<Trails> trailsBox;
  TrailsBloc(this.trailsRepo, this.trailsBox)
      : super(TrailsDataInitialState()) {
    on<TrailsEvent>((event, emit) async {
      if (event is LoadTrailsDataEvent) {
        emit(TrailsDataLoadingState());
        Trails? trails = trailsBox.get('trails');
        if (trails != null && trails.trailList != null) {
          emit(TrailsDataLoadedState(trails: trails.trailList!));
          // emit(TrailsDataInitialState());
        }

        List<Trail>? trailList = await trailsRepo.getTrailList();
        if (trailList != null) {
          trailsBox.put('trails', Trails(trailList: trailList));
          emit(TrailsDataLoadedState(trails: trailList));
        }
      }
    });
  }
}
