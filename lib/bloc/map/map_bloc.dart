import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smartflore/components/map/map_widget.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapInitial()) {
    on<RequestCenterMapEvent>((event, emit) {
      emit(MapInitial());
      emit(OnRecenterMap());
    });
    on<ChangeMapMode>((event, emit) {
      emit(MapInitial());
      emit(OnMapModeChanged(mapMode: event.mapMode));
    });
    on<RequestTrailPreview>((event, emit) {
      emit(MapInitial());
      emit(OnRequestTrailPreview(trailID: event.trailID));
      emit(const OnMapModeChanged(mapMode: MapMode.preview));
    });
  }
}
