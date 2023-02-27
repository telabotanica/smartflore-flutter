import 'package:envied/envied.dart';
import 'app_env.dart';

part 'env_dev.g.dart';

@Envied(name: 'Env', path: '.env.dev')
class DevEnv implements AppEnv, AppEnvFields {
  DevEnv();

  @override
  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  final String apiBaseUrl = _Env.apiBaseUrl;

  @override
  @EnviedField(varName: 'ALGOLIA_APP_ID', obfuscate: true)
  final String algoliaAppId = _Env.algoliaAppId;

  @override
  @EnviedField(varName: 'ALGOLIA_API_KEY', obfuscate: true)
  final String algoliaApiKey = _Env.algoliaApiKey;

  @override
  @EnviedField(varName: 'ALGOLIA_INDEX', obfuscate: true)
  final String algoliaIndex = _Env.algoliaIndex;
}
