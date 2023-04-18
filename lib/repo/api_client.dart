import 'dart:io';

import 'package:smartflore/utils/app.dart';

class APIClient {
  String version = '';

  getVersion() async {
    if (version != '') {
      version = await AppUtils.getVersionNumber();
    }
  }

  getHeaders(String? token) async {
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
