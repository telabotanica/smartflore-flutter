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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AuthLoginImplCopyWith<$Res>
    implements $AuthLoginCopyWith<$Res> {
  factory _$$AuthLoginImplCopyWith(
          _$AuthLoginImpl value, $Res Function(_$AuthLoginImpl) then) =
      __$$AuthLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$AuthLoginImplCopyWithImpl<$Res>
    extends _$AuthLoginCopyWithImpl<$Res, _$AuthLoginImpl>
    implements _$$AuthLoginImplCopyWith<$Res> {
  __$$AuthLoginImplCopyWithImpl(
      _$AuthLoginImpl _value, $Res Function(_$AuthLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$AuthLoginImpl(
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
class _$AuthLoginImpl implements _AuthLogin {
  const _$AuthLoginImpl({required this.login, required this.password});

  factory _$AuthLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthLoginImplFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthLogin(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginImpl &&
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
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
      __$$AuthLoginImplCopyWithImpl<_$AuthLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthLoginImplToJson(
      this,
    );
  }
}

abstract class _AuthLogin implements AuthLogin {
  const factory _AuthLogin(
      {required final String login,
      required final String password}) = _$AuthLoginImpl;

  factory _AuthLogin.fromJson(Map<String, dynamic> json) =
      _$AuthLoginImpl.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginImplCopyWith<_$AuthLoginImpl> get copyWith =>
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
abstract class _$$AuthenticationResponseImplCopyWith<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  factory _$$AuthenticationResponseImplCopyWith(
          _$AuthenticationResponseImpl value,
          $Res Function(_$AuthenticationResponseImpl) then) =
      __$$AuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, UserInfoApp? user, bool? isOk, int? statusCode});

  @override
  $UserInfoAppCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticationResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationResponseImpl>
    implements _$$AuthenticationResponseImplCopyWith<$Res> {
  __$$AuthenticationResponseImplCopyWithImpl(
      _$AuthenticationResponseImpl _value,
      $Res Function(_$AuthenticationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? user = freezed,
    Object? isOk = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$AuthenticationResponseImpl(
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
class _$AuthenticationResponseImpl implements _AuthenticationResponse {
  const _$AuthenticationResponseImpl(
      {this.message, this.user, this.isOk, this.statusCode});

  factory _$AuthenticationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationResponseImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResponseImpl &&
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
  _$$AuthenticationResponseImplCopyWith<_$AuthenticationResponseImpl>
      get copyWith => __$$AuthenticationResponseImplCopyWithImpl<
          _$AuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationResponse implements AuthenticationResponse {
  const factory _AuthenticationResponse(
      {final String? message,
      final UserInfoApp? user,
      final bool? isOk,
      final int? statusCode}) = _$AuthenticationResponseImpl;

  factory _AuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationResponseImpl.fromJson;

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
  _$$AuthenticationResponseImplCopyWith<_$AuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$UserInfoAppImplCopyWith<$Res>
    implements $UserInfoAppCopyWith<$Res> {
  factory _$$UserInfoAppImplCopyWith(
          _$UserInfoAppImpl value, $Res Function(_$UserInfoAppImpl) then) =
      __$$UserInfoAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? email, @HiveField(1) String? token});
}

/// @nodoc
class __$$UserInfoAppImplCopyWithImpl<$Res>
    extends _$UserInfoAppCopyWithImpl<$Res, _$UserInfoAppImpl>
    implements _$$UserInfoAppImplCopyWith<$Res> {
  __$$UserInfoAppImplCopyWithImpl(
      _$UserInfoAppImpl _value, $Res Function(_$UserInfoAppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserInfoAppImpl(
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
class _$UserInfoAppImpl implements _UserInfoApp {
  const _$UserInfoAppImpl({@HiveField(0) this.email, @HiveField(1) this.token});

  factory _$UserInfoAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoAppImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoAppImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoAppImplCopyWith<_$UserInfoAppImpl> get copyWith =>
      __$$UserInfoAppImplCopyWithImpl<_$UserInfoAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoAppImplToJson(
      this,
    );
  }
}

abstract class _UserInfoApp implements UserInfoApp {
  const factory _UserInfoApp(
      {@HiveField(0) final String? email,
      @HiveField(1) final String? token}) = _$UserInfoAppImpl;

  factory _UserInfoApp.fromJson(Map<String, dynamic> json) =
      _$UserInfoAppImpl.fromJson;

  @override
  @HiveField(0)
  String? get email;
  @override
  @HiveField(1)
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoAppImplCopyWith<_$UserInfoAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteUser _$RemoteUserFromJson(Map<String, dynamic> json) {
  return _RemoteUser.fromJson(json);
}

/// @nodoc
mixin _$RemoteUser {
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  List<Trail>? get trails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteUserCopyWith<RemoteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteUserCopyWith<$Res> {
  factory $RemoteUserCopyWith(
          RemoteUser value, $Res Function(RemoteUser) then) =
      _$RemoteUserCopyWithImpl<$Res, RemoteUser>;
  @useResult
  $Res call({String? name, String? avatar, List<Trail>? trails});
}

/// @nodoc
class _$RemoteUserCopyWithImpl<$Res, $Val extends RemoteUser>
    implements $RemoteUserCopyWith<$Res> {
  _$RemoteUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
    Object? trails = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      trails: freezed == trails
          ? _value.trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteUserImplCopyWith<$Res>
    implements $RemoteUserCopyWith<$Res> {
  factory _$$RemoteUserImplCopyWith(
          _$RemoteUserImpl value, $Res Function(_$RemoteUserImpl) then) =
      __$$RemoteUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? avatar, List<Trail>? trails});
}

/// @nodoc
class __$$RemoteUserImplCopyWithImpl<$Res>
    extends _$RemoteUserCopyWithImpl<$Res, _$RemoteUserImpl>
    implements _$$RemoteUserImplCopyWith<$Res> {
  __$$RemoteUserImplCopyWithImpl(
      _$RemoteUserImpl _value, $Res Function(_$RemoteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
    Object? trails = freezed,
  }) {
    return _then(_$RemoteUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      trails: freezed == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteUserImpl implements _RemoteUser {
  const _$RemoteUserImpl({this.name, this.avatar, final List<Trail>? trails})
      : _trails = trails;

  factory _$RemoteUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteUserImplFromJson(json);

  @override
  final String? name;
  @override
  final String? avatar;
  final List<Trail>? _trails;
  @override
  List<Trail>? get trails {
    final value = _trails;
    if (value == null) return null;
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RemoteUser(name: $name, avatar: $avatar, trails: $trails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._trails, _trails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, avatar, const DeepCollectionEquality().hash(_trails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteUserImplCopyWith<_$RemoteUserImpl> get copyWith =>
      __$$RemoteUserImplCopyWithImpl<_$RemoteUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteUserImplToJson(
      this,
    );
  }
}

abstract class _RemoteUser implements RemoteUser {
  const factory _RemoteUser(
      {final String? name,
      final String? avatar,
      final List<Trail>? trails}) = _$RemoteUserImpl;

  factory _RemoteUser.fromJson(Map<String, dynamic> json) =
      _$RemoteUserImpl.fromJson;

  @override
  String? get name;
  @override
  String? get avatar;
  @override
  List<Trail>? get trails;
  @override
  @JsonKey(ignore: true)
  _$$RemoteUserImplCopyWith<_$RemoteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
