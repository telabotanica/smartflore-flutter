import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/repo/api_client.dart';

import '../../models/trails/trails_model.dart';

class TrailsApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  TrailsApiClient({required this.httpClient, required this.baseUrl});

  Future<List<Trail>?> getTrailList() async {
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // return trailList;
      List<Trail>? trailsData = Trails.fromJson({'trailList': data}).trailList;
      return trailsData;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
