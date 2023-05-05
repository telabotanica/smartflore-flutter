import 'package:algolia/algolia.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:smartflore/_env/app_env.dart';

class AppUtils {
  static Future<String> getVersionNumber() async {
    PackageInfo appInfo = await getAppInfo();
    return appInfo.version;
  }

  static Future<PackageInfo> getAppInfo() async {
    return await PackageInfo.fromPlatform();
  }
}

class Application {
  static final Algolia algolia = Algolia.init(
    applicationId: AppEnv().algoliaAppId,
    apiKey: AppEnv().algoliaApiKey,
  );
}
