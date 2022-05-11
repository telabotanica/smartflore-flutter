import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

import '../../models/trail/trail_model.dart';

part 'trail_event.dart';
part 'trail_state.dart';

class TrailBloc extends Bloc<TrailEvent, TrailState> {
  final TrailRepo trailsRepo;

  TrailBloc(this.trailsRepo) : super(TrailInitialState()) {
    on<TrailEvent>((event, emit) async {
      if (event is LoadTrailDataEvent) {
        emit(TrailLoadingState());
        Trail? trail = await trailsRepo.getTrailData();
        if (trail != null) {
          emit(TrailLoadedState(trail: trail));
        } else {
          emit(TrailErrorState());
        }
      }
    });
  }
}
