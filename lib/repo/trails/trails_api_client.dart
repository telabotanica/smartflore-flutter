import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/api_client.dart';

import '../../models/trails/trails_model.dart';

class TrailsApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  final UserInfoApp Function() getUserInfo;

  TrailsApiClient({required this.httpClient, required this.baseUrl, required this.getUserInfo});

  Future<List<Trail>?> getTrailList() async {
    try {
      final response = await httpClient
          .get(Uri.parse('$baseUrl/trails'))
          .onError((error, stackTrace) => Future.error('No Internet connection 😑'));

      dynamic data = _returnResponse(response);
      return Trails.fromJson({'trailList': data}).trailList;
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on Exception {
      return Future.error('Unexpected error 😢');
    }
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
      case 401:
      case 403:
        debugPrint('>>>>403:: ${response.body.toString()}');
        throw (response.body.toString());
      case 500:
      default:
        throw ('Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  Future<List<Trail>?> getMyTrailList() async {
    try {
      final response = await httpClient
          .get(Uri.parse('$baseUrl/me'), headers: await getHeaders(getUserInfo().token ?? ''))
          .onError((error, stackTrace) => Future.error('No Internet connection 😑'));

      dynamic data = _returnResponse(response);

      return RemoteUser.fromJson(data).trails;
    } on SocketException {
      throw ('No Internet connection 😑 - trails');
    } on Exception {
      throw ('Unexpected error 😢');
    } catch (e) {
      if (e.toString().contains('type')) {
        throw ('Erreur dans le format de données du sentier, merci de contacter le support');
      } else {
        debugPrint(':::e :: $e');
        throw ('Unexpected error 😢');
      }
    }
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    debugPrint(':::::::::::::::::::::::::::');
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
    debugPrint(':::::::::::::::::::::::::::');
  }
}
