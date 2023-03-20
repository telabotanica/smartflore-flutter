part of 'mytrails_bloc.dart';

@freezed
class MyTrailsEvent with _$MyTrailsEvent {
  const factory MyTrailsEvent.loadTrailsData() = _LoadTrailsData;
}
