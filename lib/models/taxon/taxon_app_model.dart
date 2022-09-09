import 'package:smartflore/models/taxon/taxon_enum.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';

class Taxon {
  String scientificName;
  String fullScientificName;
  String htmlFullScientificName;
  String genus;
  String family;
  String taxonRepository;
  int nameId;
  int taxonomicId;
  List<String> vernacularNames;
  List<Tab> tabs;

  Taxon(
      this.scientificName,
      this.fullScientificName,
      this.htmlFullScientificName,
      this.genus,
      this.family,
      this.taxonRepository,
      this.nameId,
      this.taxonomicId,
      this.vernacularNames,
      this.tabs);

  static Taxon fromTaxonAPI(TaxonAPI taxonAPI) {
    List<Tab> tabs = [];
    for (TabAPI tab in taxonAPI.card.tabs) {
      tabs.add(Tab(tab.title, tab.type,
          sections: (tab.type == TabTypeEnum.card.name)
              ? taxonAPI.card.sections
              : null,
          images:
              (tab.type == TabTypeEnum.gallery.name) ? taxonAPI.images : null,
          mapUrl: (tab.type == TabTypeEnum.webview.name && tab.title == 'Map')
              ? taxonAPI.mapUrl
              : null,
          wikipediaUrl:
              (tab.type == TabTypeEnum.webview.name && tab.title == 'Wikipedia')
                  ? taxonAPI.wikipediaUrl
                  : null));
    }
    //tabs = Tab.fromTaxonAPI(taxonAPI);
    return Taxon(
        taxonAPI.scientificName,
        taxonAPI.fullScientificName,
        taxonAPI.htmlFullScientificName,
        taxonAPI.genus,
        taxonAPI.family,
        taxonAPI.taxonRepository,
        taxonAPI.nameId,
        taxonAPI.taxonomicId,
        taxonAPI.vernacularNames,
        tabs);
  }
}

class Tab {
  String title;
  String type;
  List<SectionAPI>? sections;
  List<ImageAPI>? images;
  String? mapUrl;
  String? wikipediaUrl;
  Tab(this.title, this.type,
      {this.sections, this.images, this.mapUrl, this.wikipediaUrl});
}
