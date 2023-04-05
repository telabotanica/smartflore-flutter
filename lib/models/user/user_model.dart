import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smartflore/models/trails/trails_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class AuthLogin with _$AuthLogin {
  const factory AuthLogin({
    required String login,
    required String password,
  }) = _AuthLogin;

  factory AuthLogin.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginFromJson(json);
}

@freezed
class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse(
      {String? message,
      UserInfoApp? user,
      bool? isOk,
      int? statusCode}) = _AuthenticationResponse;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
}

@freezed
class UserInfoApp with _$UserInfoApp {
  @HiveType(typeId: 20, adapterName: 'UserAdapter')
  const factory UserInfoApp({
    @HiveField(0) String? email,
    @HiveField(1) String? token,
  }) = _UserInfoApp;

  factory UserInfoApp.fromJson(Map<String, dynamic> json) =>
      _$UserInfoAppFromJson(json);
}

@freezed
class RemoteUser with _$RemoteUser {
  const factory RemoteUser({
    String? name,
    String? avatar,
    List<Trail>? trails,
  }) = _RemoteUser;

  factory RemoteUser.fromJson(Map<String, dynamic> json) =>
      _$RemoteUserFromJson(json);
}
