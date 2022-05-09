part of 'geolocation_bloc.dart';

abstract class GeolocationEvent extends Equatable {
  const GeolocationEvent();

  @override
  List<Object> get props => [];
}

class RequestLocationPermissionEvent extends GeolocationEvent {}

class RequestCurrentLocationEvent extends GeolocationEvent {}

class RequestCurrentLocationStreamEvent extends GeolocationEvent {}

class UpdateLocationEvent extends GeolocationEvent {
  final Position position;
  const UpdateLocationEvent({required this.position});

  @override
  List<Object> get props => [position];
}
