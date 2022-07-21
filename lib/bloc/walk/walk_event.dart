part of 'walk_bloc.dart';

abstract class WalkEvent extends Equatable {
  const WalkEvent();

  @override
  List<Object> get props => [];
}

class SelectOccurence extends WalkEvent {
  final int occurenceID;
  const SelectOccurence({required this.occurenceID});

  @override
  List<Object> get props => [occurenceID];
}
