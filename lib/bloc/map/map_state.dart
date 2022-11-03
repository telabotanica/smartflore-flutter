part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.onRecenterMap() = _OnRecenterMap;
  const factory MapState.onMapModeChanged(MapMode mapMode) = _OnMapModeChanged;
  const factory MapState.onRequestTrailPreview(int trailID) =
      _OnRequestTrailPreview;
}
