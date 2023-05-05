import 'package:hive/hive.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/user/user_local_client.dart';

class UserRepo {
  final UserLocalClient userLocalClient;
  final Box<Trails> myTrailsBox;

  UserRepo(this.userLocalClient, this.myTrailsBox);

  UserInfoApp getUserInfo() {
    return userLocalClient.getUserInfo();
  }

  Future<bool> updateUserInfo(UserInfoApp userInfoApp) async {
    return await userLocalClient.updateUserInfo(userInfoApp);
  }

  Future<bool> clearUserInfo() async {
    myTrailsBox.delete('mytrails');
    return await userLocalClient.clearUserInfo();
  }

  bool isAuth() {
    return userLocalClient.isAuth();
  }

  void logout() {
    clearUserInfo();
  }
}
