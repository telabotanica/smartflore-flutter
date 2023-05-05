import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/user/user_model.dart';

class UserLocalClient {
  static const String userBoxKey = 'user';

  final Box<UserInfoApp?> userBox;
  UserLocalClient(this.userBox);

  UserInfoApp getUserInfo() {
    UserInfoApp userInfoApp =
        userBox.get(userBoxKey) ?? const UserInfoApp(email: 'not provided');
    return userInfoApp;
  }

  Future<bool> updateUserInfo(UserInfoApp userInfoApp) async {
    try {
      UserInfoApp userInfoStored = getUserInfo();

      if (userInfoStored.email == 'not provided') {
        await userBox.put(userBoxKey, userInfoApp);
      } else {
        userInfoStored = userInfoStored.copyWith(
          email: userInfoApp.email ?? userInfoStored.email,
          token: userInfoApp.token ?? userInfoStored.token,
        );

        await userBox.put(userBoxKey, userInfoStored);
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> clearUserInfo() async {
    try {
      await userBox.delete(userBoxKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  bool isAuth() {
    UserInfoApp? userInfoApp = userBox.get(userBoxKey);
    return (userInfoApp != null && userInfoApp.token != null) ? true : false;
  }
}
