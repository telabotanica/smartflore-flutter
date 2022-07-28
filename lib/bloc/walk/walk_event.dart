part of 'walk_bloc.dart';

abstract class WalkEvent extends Equatable {
  const WalkEvent();

  @override
  List<Object> get props => [];
}

class SelectOccurrence extends WalkEvent {
  final int occurrenceID;
  const SelectOccurrence({required this.occurrenceID});

  @override
  List<Object> get props => [occurrenceID];
}
