import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/api_client.dart';

class TrailsApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TrailsApiClient({required this.httpClient, required this.baseUrl});
  Future<Trails?> getTrailList() async {
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      // Needed to simplify the reading of centroid
      String data = response.body;
      data = data.replaceAll(r'\"', r'"');
      data = data.replaceAll(r'"{', r'{');
      data = data.replaceAll(r'}"', r'}');

      Map<String, dynamic> json = jsonDecode(data);
      // return trailList;
      Trails trailsData = Trails.fromJson(json);
      return trailsData;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
