part of 'taxon_bloc.dart';

abstract class TaxonEvent extends Equatable {
  const TaxonEvent();

  @override
  List<Object> get props => [];
}

class LoadTaxonDataEvent extends TaxonEvent {
  final String taxonRepo;
  final int taxonID;
  const LoadTaxonDataEvent({
    required this.taxonID,
    required this.taxonRepo,
  });

  @override
  List<Object> get props => [taxonID, taxonRepo];
}
