import 'dart:io';

import 'package:smartflore/utils/app.dart';

class APIClient {
  String version = '';

  Future<void> getVersion() async {
    if (version != '') {
      version = await AppUtils.getVersionNumber();
    }
  }

  Future<Map<String, String>> getHeaders(String? token) async {
    await getVersion();
    if (token == null) {
      return {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    }
    return {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.cookieHeader: 'tb_auth=$token',
    };
  }
}
