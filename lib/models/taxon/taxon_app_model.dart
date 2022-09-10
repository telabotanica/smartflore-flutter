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
  List<TabData> tabs;

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
    List<TabData> tabs = [];
    for (TabAPI tab in taxonAPI.card.tabs) {
      tabs.add(TabData(tab.title, tab.type,
          sections: (tab.type == TabTypeEnum.card.name)
              ? taxonAPI.card.sections
              : null,
          images: (tab.type == TabTypeEnum.gallery.name ||
                  tab.type == TabTypeEnum.card.name)
              ? taxonAPI.images
              : null,
          url: (tab.type == TabTypeEnum.webview.name && tab.title == 'Map')
              ? taxonAPI.mapUrl
              : (tab.type == TabTypeEnum.webview.name &&
                      tab.title == 'Wikipedia')
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

class TabData {
  String title;
  String type;
  List<SectionAPI>? sections;
  List<ImageAPI>? images;
  String? url;
  TabData(this.title, this.type, {this.sections, this.images, this.url});
}
