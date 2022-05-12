part of 'trail_bloc.dart';

abstract class TrailEvent extends Equatable {
  const TrailEvent();

  @override
  List<Object> get props => [];
}

class LoadTrailDataEvent extends TrailEvent {
  final String id;
  const LoadTrailDataEvent({required this.id});

  @override
  List<Object> get props => [id];
}
