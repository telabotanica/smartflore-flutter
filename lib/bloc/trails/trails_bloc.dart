import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';

part 'trails_event.dart';
part 'trails_state.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsDataState> {
  final TrailsRepo trailsRepo;

  TrailsBloc(this.trailsRepo) : super(TrailsDataInitialState()) {
    on<TrailsEvent>((event, emit) async {
      if (event is LoadTrailsDataEvent) {
        emit(TrailsDataLoadingState());
        Trails? trails = await trailsRepo.getTrailList();
        if (trails != null) {
          emit(TrailsDataLoadedState(trails: trails));
        } else {
          emit(TrailsDataErrorState());
        }
      }
    });
  }
}
