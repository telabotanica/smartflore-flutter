part of 'trail_bloc.dart';

abstract class TrailState extends Equatable {
  const TrailState();

  @override
  List<Object> get props => [];
}

class TrailInitialState extends TrailState {}

class TrailLoadingState extends TrailState {}

class TrailLoadedState extends TrailState {
  final Trail trail;
  const TrailLoadedState({required this.trail});
}

class TrailErrorState extends TrailState {}
