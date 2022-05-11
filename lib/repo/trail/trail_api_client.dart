import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';

class TrailApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  TrailApiClient({required this.httpClient, required this.baseUrl});
  Future<Trail?> getTrailData() async {
    final response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      String data = response.body;
      data = data.replaceAll(r'\"', r'"');
      data = data.replaceAll(r'"{', r'{');
      data = data.replaceAll(r'}"', r'}');

      Map<String, dynamic> json = jsonDecode(data);
      // return trailList;
      Trail trailData = Trail.fromJson(json);
      return trailData;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}