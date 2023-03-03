part of 'taxon_bloc.dart';

@freezed
class TaxonEvent with _$TaxonEvent {
  const factory TaxonEvent.loadTaxonData(String repo, int id) = _LoadTaxonData;
}
