import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static Future<String> getVersionNumber() async {
    PackageInfo appInfo = await getAppInfo();
    return appInfo.version;
  }

  static Future<PackageInfo> getAppInfo() async {
    return await PackageInfo.fromPlatform();
  }
}
