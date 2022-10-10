part of 'save_trail_bloc.dart';

@freezed
class SaveTrailEvent with _$SaveTrailEvent {
  const factory SaveTrailEvent.saveTrailLocally({required int id}) =
      _SaveTrailLocally;
}
