import 'package:smartflore/models/user/user_model.dart';
import 'package:smartflore/repo/auth/auth_api_client.dart';

class AuthRepo {
  final AuthApiClient authApiClient;

  AuthRepo({required this.authApiClient});

  Future<AuthenticationResponse> login(AuthLogin user) async {
    return await authApiClient.login(user);
  }
}
