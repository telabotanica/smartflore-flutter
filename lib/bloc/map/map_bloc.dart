import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartflore/components/map/map_widget.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const _Initial()) {
    FollowMode followMode = FollowMode.free;
    DateTime lastCenterRequest = DateTime.now();

    on<MapEvent>((event, emit) {
      event.when(
          //
          requestCenterMap: (bool isFollowMode) {
        if (!isFollowMode) {
          DateTime now = DateTime.now();
          if (now.difference(lastCenterRequest).inMilliseconds < 1000 ||
              followMode == FollowMode.locked) {
            followMode = (followMode == FollowMode.free)
                ? FollowMode.locked
                : FollowMode.free;
            add(MapEvent.changeFollowMode(followMode));
          } else {}
          lastCenterRequest = now;
        }
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
      },
          //
          changeFollowMode: (FollowMode followMode) {
        emit(const MapState.initial());
        emit(MapState.onFollowModeChanged(followMode));
        emit(const MapState.onRecenterMap());
      });
    });
  }
}
