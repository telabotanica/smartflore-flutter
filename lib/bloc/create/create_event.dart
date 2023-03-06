part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.start() = _Start;
  const factory CreateEvent.saveTitle({required String name}) =
      _CreateSaveTitle;
  const factory CreateEvent.registerLocation() = _RegisterLocation;
  const factory CreateEvent.updatePath(Path path) = _RequestUpdatePath;
  const factory CreateEvent.pause() = _Pause;
  const factory CreateEvent.unPause() = _UnPause;
  const factory CreateEvent.findTaxon(
      {required String name, required bool isScientificName}) = _FindTaxon;
  const factory CreateEvent.addPic() = _AddPic;
  const factory CreateEvent.registerTaxon(Taxon taxon) = _RegisterTaxon;
  const factory CreateEvent.taxonRegistered() = _TaxonRegistered;
  const factory CreateEvent.saveTrail(CreateTrail trail) = _SaveTrail;
}
