import 'package:smartflore/models/taxon/taxon_app_model.dart';
import 'package:smartflore/repo/taxon/taxon_api_client.dart';

class TaxonRepo {
  final TaxonApiClient taxonApiClient;

  TaxonRepo({required this.taxonApiClient});

  Future<Taxon?> getTaxon(String taxonRepo, int taxonID) async {
    final Taxon? taxon = await taxonApiClient.getTaxon(taxonID, taxonRepo);
    return taxon;
  }
}
