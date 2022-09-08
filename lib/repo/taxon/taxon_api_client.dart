import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/models/taxon/taxon-app-model.dart';
import 'package:smartflore/repo/api_client.dart';

class TaxonApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TaxonApiClient({required this.httpClient, required this.baseUrl});

  Future<Taxon?> getTaxon(
    int taxonID,
    String taxonRepo,
  ) async {
    final response =
        await httpClient.get(Uri.parse('$baseUrl/$taxonRepo/$taxonID'));
    print('response ${response.statusCode}');

    if (response.statusCode == 200) {
      String data = response.body;

      Map<String, dynamic> json = jsonDecode(data);

      TaxonAPI taxonAPI = TaxonAPI.fromJson(json);
      Taxon convertedTaxon = Taxon.fromTaxonAPI(taxonAPI);
      return convertedTaxon;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
