part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.start() = _Start;
  const factory CreateEvent.logPosition({required LatLng pos}) = _LogPosition;
  const factory CreateEvent.findTaxon(
      {required String name, required bool isScientificName}) = _FindTaxon;
  const factory CreateEvent.addPic() = _AddPic;
  const factory CreateEvent.registerTaxon(SaveTaxon taxon) = _RegisterTaxon;
  const factory CreateEvent.saveTrail(CreateTrail trail) = _SaveTrail;
}
