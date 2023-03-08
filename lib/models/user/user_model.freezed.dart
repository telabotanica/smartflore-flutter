// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthLogin _$AuthLoginFromJson(Map<String, dynamic> json) {
  return _AuthLogin.fromJson(json);
}

/// @nodoc
mixin _$AuthLogin {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthLoginCopyWith<AuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginCopyWith<$Res> {
  factory $AuthLoginCopyWith(AuthLogin value, $Res Function(AuthLogin) then) =
      _$AuthLoginCopyWithImpl<$Res, AuthLogin>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$AuthLoginCopyWithImpl<$Res, $Val extends AuthLogin>
    implements $AuthLoginCopyWith<$Res> {
  _$AuthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthLoginCopyWith<$Res> implements $AuthLoginCopyWith<$Res> {
  factory _$$_AuthLoginCopyWith(
          _$_AuthLogin value, $Res Function(_$_AuthLogin) then) =
      __$$_AuthLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$_AuthLoginCopyWithImpl<$Res>
    extends _$AuthLoginCopyWithImpl<$Res, _$_AuthLogin>
    implements _$$_AuthLoginCopyWith<$Res> {
  __$$_AuthLoginCopyWithImpl(
      _$_AuthLogin _value, $Res Function(_$_AuthLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$_AuthLogin(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthLogin implements _AuthLogin {
  const _$_AuthLogin({required this.login, required this.password});

  factory _$_AuthLogin.fromJson(Map<String, dynamic> json) =>
      _$$_AuthLoginFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthLogin(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLogin &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLoginCopyWith<_$_AuthLogin> get copyWith =>
      __$$_AuthLoginCopyWithImpl<_$_AuthLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthLoginToJson(
      this,
    );
  }
}

abstract class _AuthLogin implements AuthLogin {
  const factory _AuthLogin(
      {required final String login,
      required final String password}) = _$_AuthLogin;

  factory _AuthLogin.fromJson(Map<String, dynamic> json) =
      _$_AuthLogin.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthLoginCopyWith<_$_AuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
