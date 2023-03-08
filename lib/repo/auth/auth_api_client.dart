import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/api_client.dart';

class AuthApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  AuthApiClient({required this.httpClient, required this.baseUrl});

  login(AuthLogin user) async {
    try {
      final response = await httpClient
          .post(Uri.parse(baseUrl), body: jsonEncode(user.toJson()))
          .onError(
              (error, stackTrace) => Future.error('No Internet connection 😑'));
      _returnResponse(response);
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on Exception {
      return Future.error('Unexpected error 😢');
    }
  }

  dynamic _returnResponse(Response response) {
    print('>>>>_returnResponse ${response.statusCode}');
    print('>>>>_returnResponse ${response.body}');
    switch (response.statusCode) {
      case 200:
        final data = jsonDecode(response.body);
        final header = jsonEncode(response.headers).toString();

        print('>>>> header == $header');
        // return trailList;

        return '';
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
