import 'dart:convert';

import 'package:http/http.dart';
import 'package:smartflore/models/ping/ping_model.dart';
import 'package:smartflore/repo/api_client.dart';

class PingApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  PingApiClient({required this.httpClient, required this.baseUrl});

  Future<bool> postPing(
    Ping ping,
  ) async {
    final response = await httpClient.post(Uri.parse(baseUrl),
        body: jsonEncode(ping.toJson()));
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
