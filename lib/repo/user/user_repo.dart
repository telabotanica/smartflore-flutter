import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/user/user_local_client.dart';

class UserRepo {
  final UserLocalClient userLocalClient;

  UserRepo(this.userLocalClient);

  UserInfoApp getUserInfo() {
    return userLocalClient.getUserInfo();
  }

  Future<bool> updateUserInfo(UserInfoApp userInfoApp) async {
    return await userLocalClient.updateUserInfo(userInfoApp);
  }

  Future<bool> clearUserInfo() async {
    return await userLocalClient.clearUserInfo();
  }

  bool isAuth() {
    return userLocalClient.isAuth();
  }

  void logout() {
    clearUserInfo();
  }
}
