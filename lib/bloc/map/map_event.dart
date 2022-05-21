part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class RequestCenterMapEvent extends MapEvent {}

class RequestTouchMarker extends MapEvent {
  final String id;
  const RequestTouchMarker({required this.id});

  @override
  List<Object> get props => [id];
}
