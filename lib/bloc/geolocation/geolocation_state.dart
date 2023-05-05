part of 'geolocation_bloc.dart';

@freezed
class GeolocationState with _$GeolocationState {
  const factory GeolocationState.initial() = _Initial;
  const factory GeolocationState.permissionLoading() = _PermissionLoading;
  const factory GeolocationState.permissionLoaded(PermissionStatus status) =
      _PermissionLoaded;
  const factory GeolocationState.loading() = _Loading;
  const factory GeolocationState.locationUpdate(Position position) = _Update;
  const factory GeolocationState.error() = _Error;
}
