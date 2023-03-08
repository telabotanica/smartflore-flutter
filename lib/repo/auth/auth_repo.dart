import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/auth/auth_api_client.dart';

class AuthRepo {
  final AuthApiClient authApiClient;

  AuthRepo({required this.authApiClient});

  login(AuthLogin user) async {
    await authApiClient.login(user);
  }
}
