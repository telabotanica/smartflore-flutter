part of 'walk_bloc.dart';

abstract class WalkState extends Equatable {
  const WalkState();

  @override
  List<Object> get props => [];
}

class WalkInitial extends WalkState {}

class OnOccurrenceSelected extends WalkState {
  final int occurenceID;
  const OnOccurrenceSelected({required this.occurenceID});
}
