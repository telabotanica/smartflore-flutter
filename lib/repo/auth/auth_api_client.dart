import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/api_client.dart';

class AuthApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  AuthApiClient({required this.httpClient, required this.baseUrl});

  Future<AuthenticationResponse> login(AuthLogin user) async {
    try {
      final response = await httpClient
          .post(Uri.parse(baseUrl), body: jsonEncode(user.toJson()))
          .onError(
              (error, stackTrace) => Future.error('No Internet connection 😑'));

      switch (response.statusCode) {
        case 200:
          String? cookie = response.headers['set-cookie'];
          Cookie cookieObj = Cookie.fromSetCookieValue(cookie ?? '');

          AuthenticationResponse authResponse = AuthenticationResponse(
              isOk: true,
              user: UserInfoApp(email: user.login, token: cookieObj.value));

          return authResponse;
        case 400:
        case 401:
        case 403:
          return AuthenticationResponse(
              isOk: false, message: response.body.toString());
        case 500:
        default:
          return AuthenticationResponse(
              isOk: false,
              message:
                  'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
      }
    } on SocketException {
      return const AuthenticationResponse(
          isOk: false, message: 'No Internet connection 😑');
    } on Exception {
      return const AuthenticationResponse(
          isOk: false, message: 'Unexpected error 😢');
    }
  }
}
