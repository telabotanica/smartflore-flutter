part of 'taxon_bloc.dart';

@freezed
class TaxonState with _$TaxonState {
  const factory TaxonState.initial() = _Initial;
  const factory TaxonState.loading() = _Loading;
  const factory TaxonState.loaded(Taxon taxon) = _Loaded;
  const factory TaxonState.error() = _Error;
}
