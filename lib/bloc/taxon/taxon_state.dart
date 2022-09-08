part of 'taxon_bloc.dart';

abstract class TaxonState extends Equatable {
  const TaxonState();

  @override
  List<Object> get props => [];
}

class TaxonInitialState extends TaxonState {}

class TaxonLoadingState extends TaxonState {}

class TaxonLoadedState extends TaxonState {
  final Taxon taxon;
  const TaxonLoadedState({required this.taxon});
}

class TaxonErrorState extends TaxonState {}
