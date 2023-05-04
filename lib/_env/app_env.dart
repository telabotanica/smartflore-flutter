import 'package:flutter/foundation.dart';
import 'package:smartflore/_env/env_prod.dart';

import 'env_dev.dart';

abstract class AppEnv implements AppEnvFields {
  factory AppEnv() => _instance;
  static final AppEnv _instance = kDebugMode ? DevEnv() : ProdEnv();
}

abstract class AppEnvFields {
  abstract final String apiBaseUrl;
  abstract final String osmUrl;
  abstract final String algoliaAppId;
  abstract final String algoliaApiKey;
  abstract final String algoliaIndex;
}
