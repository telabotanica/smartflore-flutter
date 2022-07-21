import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/repo/api_client.dart';

import '../../models/trails/trails_model.dart';

class TrailsApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  TrailsApiClient({required this.httpClient, required this.baseUrl});

  Future<List<Trail>?> getTrailList() async {
    print('>>>>> GET getTrailList');

    final response = await httpClient.get(Uri.parse(baseUrl));
    print('response ===> ${response.statusCode}');
    if (response.statusCode == 200) {
      // Needed to simplify the reading of centroid
      final data = jsonDecode(response.body);
      print('data ======>>>> $data');
      // return trailList;
      List<Trail>? trailsData =
          TrailList.fromJson({'trailList': data}).trailList;
      print('data => $trailsData');
      return trailsData;
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }
}
