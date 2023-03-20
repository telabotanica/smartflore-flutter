part of 'mytrails_bloc.dart';

@freezed
class MyTrailsState with _$MyTrailsState {
  const factory MyTrailsState.initial() = _Initial;
  const factory MyTrailsState.dataLoading() = _DataLoading;
  const factory MyTrailsState.dataLoaded(List<Trail> trails) = _DataLoaded;
  const factory MyTrailsState.dataLoadError() = _DataLoadError;
}
