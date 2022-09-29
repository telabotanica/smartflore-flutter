class TaxonScreenArguments {
  final String taxonRepo;
  final int taxonID;
  final String? taxonVernacularName;
  final String? taxonScientificName;

  TaxonScreenArguments(this.taxonID, this.taxonRepo, this.taxonVernacularName,
      this.taxonScientificName);
}
