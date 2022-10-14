import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:smartflore/repo/api_client.dart';

import '../../models/trails/trails_model.dart';

class TrailsApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  TrailsApiClient({required this.httpClient, required this.baseUrl});

  Future<List<Trail>?> getTrailList() async {
    List<Trail>? trailsData;
    try {
      final response = await httpClient.get(Uri.parse(baseUrl)).onError(
          (error, stackTrace) => Future.error('No Internet connection 😑'));
      trailsData = _returnResponse(response);
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on Exception {
      return Future.error('Unexpected error 😢');
    }
    return trailsData;
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        final data = jsonDecode(response.body);
        // return trailList;
        List<Trail>? trailsData =
            Trails.fromJson({'trailList': data}).trailList;
        return trailsData;
      case 400:
      case 401:
      case 403:
        throw Future.error(response.body.toString());
      case 500:
      default:
        throw Future.error(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
