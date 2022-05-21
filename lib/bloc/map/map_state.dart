part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object> get props => [];
}

class MapInitial extends MapState {}

class OnRecenterMapState extends MapState {}

class OnTouchMarkerState extends MapState {
  final String id;
  const OnTouchMarkerState({required this.id});
}
