part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class RequestCenterMapEvent extends MapEvent {}

class ChangeMapMode extends MapEvent {
  final MapMode mapMode;
  const ChangeMapMode({required this.mapMode});

  @override
  List<Object> get props => [mapMode];
}

class RequestTrailPreview extends MapEvent {
  final String trailID;
  const RequestTrailPreview({required this.trailID});

  @override
  List<Object> get props => [trailID];
}
