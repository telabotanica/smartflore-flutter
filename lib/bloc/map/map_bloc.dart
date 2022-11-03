import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartflore/components/map/map_widget.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const _Initial()) {
    on<MapEvent>((event, emit) {
      event.when(
          //
          requestCenterMap: () {
        emit(const MapState.initial());
        emit(const MapState.onRecenterMap());
      },
          //
          changeMapMode: (MapMode mapMode) {
        emit(const MapState.initial());
        emit(MapState.onMapModeChanged(mapMode));
      },
          //
          requestTrailPreview: (int trailID) {
        emit(const MapState.initial());
        emit(MapState.onRequestTrailPreview(trailID));
        emit(const MapState.onMapModeChanged(MapMode.preview));
      });
    });
  }
}
