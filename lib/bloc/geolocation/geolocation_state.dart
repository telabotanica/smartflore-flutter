part of 'geolocation_bloc.dart';

abstract class GeolocationState extends Equatable {
  const GeolocationState();

  @override
  List<Object> get props => [];
}

class LocationInitialState extends GeolocationState {}

class LocationPermissionLoadingState extends GeolocationState {}

class LocationPermissionLoadedState extends GeolocationState {
  final PermissionStatus status;
  const LocationPermissionLoadedState({required this.status});

  @override
  List<Object> get props => [status];
}

class LocationLoadingState extends GeolocationState {}

class LocationUpdatedState extends GeolocationState {
  final Position position;
  const LocationUpdatedState({required this.position});

  @override
  List<Object> get props => [position];
}

class LocationErrorState extends GeolocationState {}
