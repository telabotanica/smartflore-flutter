import 'package:smartflore/utils/app.dart';

class APIClient {
  String version = '';

  getVersion() async {
    if (version != '') {
      version = await AppUtils.getVersionNumber();
    }
  }
}
