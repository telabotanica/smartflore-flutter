import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';

class TaxonApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TaxonApiClient({required this.httpClient, required this.baseUrl});

  Future<TrailDetails?> getTaxonText(
    int taxonID,
    String taxonRepo,
  ) async {
    final response =
        await httpClient.get(Uri.parse('$baseUrl/$taxonRepo/$taxonID'));

    if (response.statusCode == 200) {
      // Needed to simplify the reading of centroid
      String data = response.body;

      Map<String, dynamic> json = jsonDecode(data);

      TrailDetails trailData = TrailDetails.fromJson(json);
      return trailData;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
