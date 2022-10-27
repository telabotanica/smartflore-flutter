part of 'create_bloc.dart';

@freezed
class CreateState with _$CreateState {
  const factory CreateState.initial() = _Initial;
  const factory CreateState.startPath() = _StartPath;

  const factory CreateState.newTaxon() = _NewTaxon;
  const factory CreateState.addPicStart() = _AddPicStart;
  const factory CreateState.addPicLoading() = _AddPicLoading;
  const factory CreateState.addPicError() = _AddPicError;
}
