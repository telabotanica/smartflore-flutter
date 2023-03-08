import 'package:freezed_annotation/freezed_annotation.dart';

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
