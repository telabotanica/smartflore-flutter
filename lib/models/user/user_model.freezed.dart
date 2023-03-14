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

UserInfoApp _$UserInfoAppFromJson(Map<String, dynamic> json) {
  return _UserInfoApp.fromJson(json);
}

/// @nodoc
mixin _$UserInfoApp {
  @HiveField(0)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoAppCopyWith<UserInfoApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoAppCopyWith<$Res> {
  factory $UserInfoAppCopyWith(
          UserInfoApp value, $Res Function(UserInfoApp) then) =
      _$UserInfoAppCopyWithImpl<$Res, UserInfoApp>;
  @useResult
  $Res call({@HiveField(0) String? email, @HiveField(1) String? token});
}

/// @nodoc
class _$UserInfoAppCopyWithImpl<$Res, $Val extends UserInfoApp>
    implements $UserInfoAppCopyWith<$Res> {
  _$UserInfoAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoAppCopyWith<$Res>
    implements $UserInfoAppCopyWith<$Res> {
  factory _$$_UserInfoAppCopyWith(
          _$_UserInfoApp value, $Res Function(_$_UserInfoApp) then) =
      __$$_UserInfoAppCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? email, @HiveField(1) String? token});
}

/// @nodoc
class __$$_UserInfoAppCopyWithImpl<$Res>
    extends _$UserInfoAppCopyWithImpl<$Res, _$_UserInfoApp>
    implements _$$_UserInfoAppCopyWith<$Res> {
  __$$_UserInfoAppCopyWithImpl(
      _$_UserInfoApp _value, $Res Function(_$_UserInfoApp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_UserInfoApp(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 20, adapterName: 'UserAdapter')
class _$_UserInfoApp implements _UserInfoApp {
  const _$_UserInfoApp({@HiveField(0) this.email, @HiveField(1) this.token});

  factory _$_UserInfoApp.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoAppFromJson(json);

  @override
  @HiveField(0)
  final String? email;
  @override
  @HiveField(1)
  final String? token;

  @override
  String toString() {
    return 'UserInfoApp(email: $email, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoApp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoAppCopyWith<_$_UserInfoApp> get copyWith =>
      __$$_UserInfoAppCopyWithImpl<_$_UserInfoApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoAppToJson(
      this,
    );
  }
}

abstract class _UserInfoApp implements UserInfoApp {
  const factory _UserInfoApp(
      {@HiveField(0) final String? email,
      @HiveField(1) final String? token}) = _$_UserInfoApp;

  factory _UserInfoApp.fromJson(Map<String, dynamic> json) =
      _$_UserInfoApp.fromJson;

  @override
  @HiveField(0)
  String? get email;
  @override
  @HiveField(1)
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoAppCopyWith<_$_UserInfoApp> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResponse {
  String? get message => throw _privateConstructorUsedError;
  UserInfoApp? get user => throw _privateConstructorUsedError;
  bool? get isOk => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResponseCopyWith<AuthenticationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) then) =
      _$AuthenticationResponseCopyWithImpl<$Res, AuthenticationResponse>;
  @useResult
  $Res call({String? message, UserInfoApp? user, bool? isOk, int? statusCode});

  $UserInfoAppCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<$Res,
        $Val extends AuthenticationResponse>
    implements $AuthenticationResponseCopyWith<$Res> {
  _$AuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
    Object? isOk = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoApp?,
      isOk: freezed == isOk
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoAppCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoAppCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationResponseCopyWith<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  factory _$$_AuthenticationResponseCopyWith(_$_AuthenticationResponse value,
          $Res Function(_$_AuthenticationResponse) then) =
      __$$_AuthenticationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, UserInfoApp? user, bool? isOk, int? statusCode});

  @override
  $UserInfoAppCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthenticationResponseCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$_AuthenticationResponse>
    implements _$$_AuthenticationResponseCopyWith<$Res> {
  __$$_AuthenticationResponseCopyWithImpl(_$_AuthenticationResponse _value,
      $Res Function(_$_AuthenticationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
    Object? isOk = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_AuthenticationResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoApp?,
      isOk: freezed == isOk
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationResponse implements _AuthenticationResponse {
  const _$_AuthenticationResponse(
      {this.message, this.user, this.isOk, this.statusCode});

  factory _$_AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationResponseFromJson(json);

  @override
  final String? message;
  @override
  final UserInfoApp? user;
  @override
  final bool? isOk;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'AuthenticationResponse(message: $message, user: $user, isOk: $isOk, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isOk, isOk) || other.isOk == isOk) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, user, isOk, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationResponseCopyWith<_$_AuthenticationResponse> get copyWith =>
      __$$_AuthenticationResponseCopyWithImpl<_$_AuthenticationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationResponseToJson(
      this,
    );
  }
}

abstract class _AuthenticationResponse implements AuthenticationResponse {
  const factory _AuthenticationResponse(
      {final String? message,
      final UserInfoApp? user,
      final bool? isOk,
      final int? statusCode}) = _$_AuthenticationResponse;

  factory _AuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationResponse.fromJson;

  @override
  String? get message;
  @override
  UserInfoApp? get user;
  @override
  bool? get isOk;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationResponseCopyWith<_$_AuthenticationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
