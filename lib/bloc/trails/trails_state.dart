part of 'trails_bloc.dart';

@immutable
abstract class TrailsDataState {}

class TrailsDataInitialState extends TrailsDataState {}

class TrailsDataLoadingState extends TrailsDataState {}

class TrailsDataLoadedState extends TrailsDataState {
  final List<Trail> trails;
  TrailsDataLoadedState({required this.trails});
}

class TrailsDataErrorState extends TrailsDataState {}
