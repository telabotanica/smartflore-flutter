import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;

class TrailApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TrailApiClient({required this.httpClient, required this.baseUrl});
  Future<TrailDetails?> getTrailData(int id) async {
    final response = await httpClient.get(Uri.parse('$baseUrl/trail/$id'));
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

  Future<BatchedTrail?> getTrailBatchedData(int id) async {
    final response =
        await httpClient.get(Uri.parse('$baseUrl/batch/trail/$id'));
    if (response.statusCode == 200) {
      // Needed to simplify the reading of centroid
      String data = response.body;

      Map<String, dynamic> json = jsonDecode(data);

      TrailDetails trailDData = TrailDetails.fromJson(json);

      List<t.Taxon> taxonsList = [];
      if (json['occurrences'] != null) {
        List<dynamic>? list = json['occurrences'];
        list?.map((occurrence) {
          if (occurrence != null && occurrence['taxon'] != null) {
            taxonsList.add(t.Taxon.fromJson(occurrence['taxon']));
          }
        }).toList();
      }
      return BatchedTrail(trailDData, taxonsList);
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
