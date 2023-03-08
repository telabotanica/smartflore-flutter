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
  AuthLogin get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthLogin user) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin user)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthLogin user)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({AuthLogin user});

  $AuthLoginCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthLogin,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthLoginCopyWith<$Res> get user {
    return $AuthLoginCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthLogin user});

  @override
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
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthLogin user)? login,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthLogin user)? login,
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
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
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

  @override
  AuthLogin get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLogin,
    required TResult Function() loginProcessing,
    required TResult Function() loginCompleted,
    required TResult Function() loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function()? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function()? loginError,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLogin value)? requestLogin,
    TResult? Function(_LoginProcessing value)? loginProcessing,
    TResult? Function(_LoginCompleted value)? loginCompleted,
    TResult? Function(_LoginError value)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_LoginProcessing value)? loginProcessing,
    TResult Function(_LoginCompleted value)? loginCompleted,
    TResult Function(_LoginError value)? loginError,
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
    required TResult Function() loginError,
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
    TResult? Function()? loginError,
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
    TResult Function()? loginError,
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
    required TResult Function() loginError,
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
    TResult? Function()? loginError,
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
    TResult Function()? loginError,
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
    required TResult Function() loginError,
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
    TResult? Function()? loginError,
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
    TResult Function()? loginError,
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
    required TResult Function() loginError,
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
    TResult? Function()? loginError,
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
    TResult Function()? loginError,
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
}

/// @nodoc
class __$$_LoginErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoginError>
    implements _$$_LoginErrorCopyWith<$Res> {
  __$$_LoginErrorCopyWithImpl(
      _$_LoginError _value, $Res Function(_$_LoginError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginError implements _LoginError {
  const _$_LoginError();

  @override
  String toString() {
    return 'AuthState.loginError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginError);
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
    required TResult Function() loginError,
  }) {
    return loginError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLogin,
    TResult? Function()? loginProcessing,
    TResult? Function()? loginCompleted,
    TResult? Function()? loginError,
  }) {
    return loginError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLogin,
    TResult Function()? loginProcessing,
    TResult Function()? loginCompleted,
    TResult Function()? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError();
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
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _LoginError implements AuthState {
  const factory _LoginError() = _$_LoginError;
}
