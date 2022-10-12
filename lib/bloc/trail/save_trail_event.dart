part of 'save_trail_bloc.dart';

@freezed
class SaveTrailEvent with _$SaveTrailEvent {
  const factory SaveTrailEvent.saveTrailLocally({required int id}) =
      _SaveTrailLocally;
  const factory SaveTrailEvent.unSaveTrailLocally({required int id}) =
      _UnSaveTrailLocally;
  const factory SaveTrailEvent.abortSave({required int id}) =
      _AbortSaveTrailLocally;
}
