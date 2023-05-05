part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.requestCenterMap(bool isFollowMode) =
      _RequestCenterMap;
  const factory MapEvent.changeMapMode(MapMode mapMode) = _ChangeMapMode;
  const factory MapEvent.requestTrailPreview(int trailID) =
      _RequestTrailPreview;
  const factory MapEvent.changeFollowMode(FollowMode followMode) =
      _ChangeFollowMode;
}
