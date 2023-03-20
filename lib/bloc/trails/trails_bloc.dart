import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails_repo.dart';

part 'trails_event.dart';
part 'trails_state.dart';
part 'trails_bloc.freezed.dart';

class TrailsBloc extends Bloc<TrailsEvent, TrailsState> {
  final TrailsRepo trailsRepo;
  final Box<Trails> trailsBox;

  TrailsBloc(this.trailsRepo, this.trailsBox) : super(const _Initial()) {
    on<TrailsEvent>((event, emit) async {
      event.when(
        loadTrailsData: () async {
          emit(const TrailsState.dataLoading());
          Trails? trails = trailsBox.get('trails');
          if (trails != null && trails.trailList != null) {
            emit(TrailsState.dataLoaded(trails.trailList!));
          }
          List<Trail>? trailList = await trailsRepo.getTrailList();
          if (trailList != null) {
            trailsBox.put('trails', Trails(trailList: trailList));
            emit(TrailsState.dataLoaded(trailList));
          }
        },
      );
    });
  }
}
