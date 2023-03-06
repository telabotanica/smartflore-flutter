part of 'create_bloc.dart';

@freezed
class CreateState with _$CreateState {
  const factory CreateState.initial() = _Initial;
  const factory CreateState.registeringName() = _RegisteringName;
  const factory CreateState.nameRegistered(String name) = _NameRegistered;
  const factory CreateState.startPath() = _StartPath;
  const factory CreateState.updatePath(Path path) = _UpdatePath;

  const factory CreateState.taxonAdded() = _TaxonAdded;

  const factory CreateState.addPicStart() = _AddPicStart;
  const factory CreateState.addPicLoading() = _AddPicLoading;
  const factory CreateState.addPicError() = _AddPicError;
}
