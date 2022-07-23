import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/walk/walk_repo.dart';

part 'walk_event.dart';
part 'walk_state.dart';

class WalkBloc extends Bloc<WalkEvent, WalkState> {
  final WalkRepo walkRepo;

  WalkBloc(this.walkRepo) : super(WalkInitial()) {
    on<SelectOccurrence>((event, emit) {
      walkRepo.setCurrentOccurence(event.occurrenceID);
      emit(WalkInitial());
      emit(OnOccurrenceSelected(occurenceID: event.occurrenceID));
    });
  }
}
