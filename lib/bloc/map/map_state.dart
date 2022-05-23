part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object> get props => [];
}

class MapInitial extends MapState {}

class OnRecenterMap extends MapState {}

class OnMapModeChanged extends MapState {
  final MapMode mapMode;
  const OnMapModeChanged({required this.mapMode});
}

class OnRequestTrailPreview extends MapState {
  final String trailID;
  const OnRequestTrailPreview({required this.trailID});
}
