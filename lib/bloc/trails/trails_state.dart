part of 'trails_bloc.dart';

@freezed
class TrailsState with _$TrailsState {
  const factory TrailsState.initial() = _Initial;
  const factory TrailsState.dataLoading() = _DataLoading;
  const factory TrailsState.dataLoaded(List<Trail> trails) = _DataLoaded;
  const factory TrailsState.dataLoadError() = _DataLoadError;
}
