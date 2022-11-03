part of 'geolocation_bloc.dart';

@freezed
class GeolocationEvent with _$GeolocationEvent {
  const factory GeolocationEvent.started() = _Started;
  const factory GeolocationEvent.requestPermission() = _RequestPermission;
  const factory GeolocationEvent.requestCurrentLocation() =
      _RequestCurrentLocation;
  const factory GeolocationEvent.requestCurrentLocationStream() =
      _RequestCurrentLocationStream;
  const factory GeolocationEvent.updateLocation(Position position) =
      _UpdateLocation;
}
