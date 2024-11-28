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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthLogin user});

  $AuthLoginCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginImpl(
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

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.user);

  @override
  final AuthLogin user;

  @override
  String toString() {
    return 'AuthEvent.login(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

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
  const factory _Login(final AuthLogin user) = _$LoginImpl;

  AuthLogin get user;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
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
  const factory _Logout() = _$LogoutImpl;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestLoginImplCopyWith<$Res> {
  factory _$$RequestLoginImplCopyWith(
          _$RequestLoginImpl value, $Res Function(_$RequestLoginImpl) then) =
      __$$RequestLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestLoginImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RequestLoginImpl>
    implements _$$RequestLoginImplCopyWith<$Res> {
  __$$RequestLoginImplCopyWithImpl(
      _$RequestLoginImpl _value, $Res Function(_$RequestLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLoginImpl implements _RequestLogin {
  const _$RequestLoginImpl();

  @override
  String toString() {
    return 'AuthState.requestLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestLoginImpl);
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
  const factory _RequestLogin() = _$RequestLoginImpl;
}

/// @nodoc
abstract class _$$LoginProcessingImplCopyWith<$Res> {
  factory _$$LoginProcessingImplCopyWith(_$LoginProcessingImpl value,
          $Res Function(_$LoginProcessingImpl) then) =
      __$$LoginProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginProcessingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginProcessingImpl>
    implements _$$LoginProcessingImplCopyWith<$Res> {
  __$$LoginProcessingImplCopyWithImpl(
      _$LoginProcessingImpl _value, $Res Function(_$LoginProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginProcessingImpl implements _LoginProcessing {
  const _$LoginProcessingImpl();

  @override
  String toString() {
    return 'AuthState.loginProcessing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginProcessingImpl);
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
  const factory _LoginProcessing() = _$LoginProcessingImpl;
}

/// @nodoc
abstract class _$$LoginCompletedImplCopyWith<$Res> {
  factory _$$LoginCompletedImplCopyWith(_$LoginCompletedImpl value,
          $Res Function(_$LoginCompletedImpl) then) =
      __$$LoginCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCompletedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginCompletedImpl>
    implements _$$LoginCompletedImplCopyWith<$Res> {
  __$$LoginCompletedImplCopyWithImpl(
      _$LoginCompletedImpl _value, $Res Function(_$LoginCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginCompletedImpl implements _LoginCompleted {
  const _$LoginCompletedImpl();

  @override
  String toString() {
    return 'AuthState.loginCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginCompletedImpl);
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
  const factory _LoginCompleted() = _$LoginCompletedImpl;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationResponse authResponse});

  $AuthenticationResponseCopyWith<$Res> get authResponse;
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = null,
  }) {
    return _then(_$LoginErrorImpl(
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

class _$LoginErrorImpl implements _LoginError {
  const _$LoginErrorImpl(this.authResponse);

  @override
  final AuthenticationResponse authResponse;

  @override
  String toString() {
    return 'AuthState.loginError(authResponse: $authResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

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
      _$LoginErrorImpl;

  AuthenticationResponse get authResponse;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStatusImplCopyWith<$Res> {
  factory _$$AuthStatusImplCopyWith(
          _$AuthStatusImpl value, $Res Function(_$AuthStatusImpl) then) =
      __$$AuthStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuth});
}

/// @nodoc
class __$$AuthStatusImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStatusImpl>
    implements _$$AuthStatusImplCopyWith<$Res> {
  __$$AuthStatusImplCopyWithImpl(
      _$AuthStatusImpl _value, $Res Function(_$AuthStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuth = null,
  }) {
    return _then(_$AuthStatusImpl(
      null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStatusImpl implements _AuthStatus {
  const _$AuthStatusImpl(this.isAuth);

  @override
  final bool isAuth;

  @override
  String toString() {
    return 'AuthState.authStatus(isAuth: $isAuth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusImpl &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      __$$AuthStatusImplCopyWithImpl<_$AuthStatusImpl>(this, _$identity);

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
  const factory _AuthStatus(final bool isAuth) = _$AuthStatusImpl;

  bool get isAuth;
  @JsonKey(ignore: true)
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessImpl implements _LogoutSuccess {
  const _$LogoutSuccessImpl();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessImpl);
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
  const factory _LogoutSuccess() = _$LogoutSuccessImpl;
}
