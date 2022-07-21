import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';

class TrailApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TrailApiClient({required this.httpClient, required this.baseUrl});
  Future<TrailDetails?> getTrailData(int id) async {
    final response =
        await httpClient.get(Uri.parse(baseUrl + '/' + id.toString()));

    print('response.statusCode ${response.statusCode}');
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
