part of 'save_trail_bloc.dart';

@freezed
class SaveTrailState with _$SaveTrailState {
  const factory SaveTrailState.initial() = _Initial;
  const factory SaveTrailState.loading(
      {required int nbImageSaved, required int nbImages}) = _Loading;
  const factory SaveTrailState.loaded() = _Loaded;
}
