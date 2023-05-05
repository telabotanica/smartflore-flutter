// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthLogin user) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin user)? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthLogin user)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthLogin user});

  $AuthLoginCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Login(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthLogin,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthLoginCopyWith<$Res> get user {
    return $AuthLoginCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login(this.user);

  @override
  final AuthLogin user;

  @override
  String toString() {
    return 'AuthEvent.login(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthLogin user) login,
    required TResult Function() logout,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin user)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthLogin user)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final AuthLogin user) = _$_Login;

  AuthLogin get user;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthLogin user) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin user)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthLogin user)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RequestLoginCopyWith<$Res> {
  factory _$$_RequestLoginCopyWith(
          _$_RequestLogin value, $Res Function(_$_RequestLogin) then) =
      __$$_RequestLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLoginCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_RequestLogin>
    implements _$$_RequestLoginCopyWith<$Res> {
  __$$_RequestLoginCopyWithImpl(
      _$_RequestLogin _value, $Res Function(_$_RequestLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestLogin implements _RequestLogin {
  const _$_RequestLogin();

  @override
  String toString() {
    return 'AuthState.requestLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return requestLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return requestLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return requestLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return requestLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin(this);
    }
    return orElse();
  }
}

abstract class _RequestLogin implements AuthState {
  const factory _RequestLogin() = _$_RequestLogin;
}

/// @nodoc
abstract class _$$_LoginProcessingCopyWith<$Res> {
  factory _$$_LoginProcessingCopyWith(
          _$_LoginProcessing value, $Res Function(_$_LoginProcessing) then) =
      __$$_LoginProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginProcessingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginProcessing>
    implements _$$_LoginProcessingCopyWith<$Res> {
  __$$_LoginProcessingCopyWithImpl(
      _$_LoginProcessing _value, $Res Function(_$_LoginProcessing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginProcessing implements _LoginProcessing {
  const _$_LoginProcessing();

  @override
  String toString() {
    return 'AuthState.loginProcessing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return loginProcessing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return loginProcessing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginProcessing != null) {
      return loginProcessing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginProcessing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginProcessing != null) {
      return loginProcessing(this);
    }
    return orElse();
  }
}

abstract class _LoginProcessing implements AuthState {
  const factory _LoginProcessing() = _$_LoginProcessing;
}

/// @nodoc
abstract class _$$_LoginCompletedCopyWith<$Res> {
  factory _$$_LoginCompletedCopyWith(
          _$_LoginCompleted value, $Res Function(_$_LoginCompleted) then) =
      __$$_LoginCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCompletedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginCompleted>
    implements _$$_LoginCompletedCopyWith<$Res> {
  __$$_LoginCompletedCopyWithImpl(
      _$_LoginCompleted _value, $Res Function(_$_LoginCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginCompleted implements _LoginCompleted {
  const _$_LoginCompleted();

  @override
  String toString() {
    return 'AuthState.loginCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return loginCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return loginCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginCompleted != null) {
      return loginCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginCompleted != null) {
      return loginCompleted(this);
    }
    return orElse();
  }
}

abstract class _LoginCompleted implements AuthState {
  const factory _LoginCompleted() = _$_LoginCompleted;
}

/// @nodoc
abstract class _$$_LoginErrorCopyWith<$Res> {
  factory _$$_LoginErrorCopyWith(
          _$_LoginError value, $Res Function(_$_LoginError) then) =
      __$$_LoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationResponse authResponse});

  $AuthenticationResponseCopyWith<$Res> get authResponse;
}

/// @nodoc
class __$$_LoginErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginError>
    implements _$$_LoginErrorCopyWith<$Res> {
  __$$_LoginErrorCopyWithImpl(
      _$_LoginError _value, $Res Function(_$_LoginError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = null,
  }) {
    return _then(_$_LoginError(
      null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthenticationResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationResponseCopyWith<$Res> get authResponse {
    return $AuthenticationResponseCopyWith<$Res>(_value.authResponse, (value) {
      return _then(_value.copyWith(authResponse: value));
    });
  }
}

/// @nodoc

class _$_LoginError implements _LoginError {
  const _$_LoginError(this.authResponse);

  @override
  final AuthenticationResponse authResponse;

  @override
  String toString() {
    return 'AuthState.loginError(authResponse: $authResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginError &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginErrorCopyWith<_$_LoginError> get copyWith =>
      __$$_LoginErrorCopyWithImpl<_$_LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return loginError(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return loginError?.call(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(authResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _LoginError implements AuthState {
  const factory _LoginError(final AuthenticationResponse authResponse) =
      _$_LoginError;

  AuthenticationResponse get authResponse;
  @JsonKey(ignore: true)
  _$$_LoginErrorCopyWith<_$_LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStatusCopyWith<$Res> {
  factory _$$_AuthStatusCopyWith(
          _$_AuthStatus value, $Res Function(_$_AuthStatus) then) =
      __$$_AuthStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuth});
}

/// @nodoc
class __$$_AuthStatusCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStatus>
    implements _$$_AuthStatusCopyWith<$Res> {
  __$$_AuthStatusCopyWithImpl(
      _$_AuthStatus _value, $Res Function(_$_AuthStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuth = null,
  }) {
    return _then(_$_AuthStatus(
      null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthStatus implements _AuthStatus {
  const _$_AuthStatus(this.isAuth);

  @override
  final bool isAuth;

  @override
  String toString() {
    return 'AuthState.authStatus(isAuth: $isAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStatus &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStatusCopyWith<_$_AuthStatus> get copyWith =>
      __$$_AuthStatusCopyWithImpl<_$_AuthStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return authStatus(isAuth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return authStatus?.call(isAuth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (authStatus != null) {
      return authStatus(isAuth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return authStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return authStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (authStatus != null) {
      return authStatus(this);
    }
    return orElse();
  }
}

abstract class _AuthStatus implements AuthState {
  const factory _AuthStatus(final bool isAuth) = _$_AuthStatus;

  bool get isAuth;
  @JsonKey(ignore: true)
  _$$_AuthStatusCopyWith<_$_AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutSuccessCopyWith<$Res> {
  factory _$$_LogoutSuccessCopyWith(
          _$_LogoutSuccess value, $Res Function(_$_LogoutSuccess) then) =
      __$$_LogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LogoutSuccess>
    implements _$$_LogoutSuccessCopyWith<$Res> {
  __$$_LogoutSuccessCopyWithImpl(
      _$_LogoutSuccess _value, $Res Function(_$_LogoutSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutSuccess implements _LogoutSuccess {
  const _$_LogoutSuccess();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function(AuthenticationResponse authResponse) loginError,
    required TResult Function(bool isAuth) authStatus,
    required TResult Function() logoutSuccess,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function(AuthenticationResponse authResponse)? loginError,
    TResult? Function(bool isAuth)? authStatus,
    TResult? Function()? logoutSuccess,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function(AuthenticationResponse authResponse)? loginError,
    TResult Function(bool isAuth)? authStatus,
    TResult Function()? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_LoginProcessing value) loginProcessing,
    required TResult Function(_LoginCompleted value) loginCompleted,
    required TResult Function(_LoginError value) loginError,
    required TResult Function(_AuthStatus value) authStatus,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
    TResult? Function(_AuthStatus value)? authStatus,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
    TResult Function(_AuthStatus value)? authStatus,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess() = _$_LogoutSuccess;
}
