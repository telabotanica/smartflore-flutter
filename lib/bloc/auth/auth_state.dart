part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.requestLogin() = _RequestLogin;
  const factory AuthState.loginProcessing() = _LoginProcessing;
  const factory AuthState.loginCompleted() = _LoginCompleted;
  const factory AuthState.loginError(AuthenticationResponse authResponse) =
      _LoginError;
  const factory AuthState.authStatus(bool isAuth) = _AuthStatus;
  const factory AuthState.logoutSuccess() = _LogoutSuccess;
}
