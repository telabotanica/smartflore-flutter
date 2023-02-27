import 'package:flutter/foundation.dart';

import 'env_dev.dart';

abstract class AppEnv implements AppEnvFields {
  factory AppEnv() => _instance;
  static final AppEnv _instance = kDebugMode ? DevEnv() : AppEnv();
}

abstract class AppEnvFields {
  abstract final String apiBaseUrl;
  abstract final String osmUrl;
  abstract final String algoliaAppId;
  abstract final String algoliaApiKey;
  abstract final String algoliaIndex;
}
