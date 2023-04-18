part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(AuthLogin user) = _Login;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.isAuth() = _Logout;
}
