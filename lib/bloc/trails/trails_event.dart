part of 'trails_bloc.dart';

@freezed
class TrailsEvent with _$TrailsEvent {
  const factory TrailsEvent.loadTrailsData() = _LoadTrailsData;
}
