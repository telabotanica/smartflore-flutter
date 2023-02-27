// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeolocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationEventCopyWith<$Res> {
  factory $GeolocationEventCopyWith(
          GeolocationEvent value, $Res Function(GeolocationEvent) then) =
      _$GeolocationEventCopyWithImpl<$Res, GeolocationEvent>;
}

/// @nodoc
class _$GeolocationEventCopyWithImpl<$Res, $Val extends GeolocationEvent>
    implements $GeolocationEventCopyWith<$Res> {
  _$GeolocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GeolocationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GeolocationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_RequestPermissionCopyWith<$Res> {
  factory _$$_RequestPermissionCopyWith(_$_RequestPermission value,
          $Res Function(_$_RequestPermission) then) =
      __$$_RequestPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestPermissionCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$_RequestPermission>
    implements _$$_RequestPermissionCopyWith<$Res> {
  __$$_RequestPermissionCopyWithImpl(
      _$_RequestPermission _value, $Res Function(_$_RequestPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestPermission implements _RequestPermission {
  const _$_RequestPermission();

  @override
  String toString() {
    return 'GeolocationEvent.requestPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) {
    return requestPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) {
    return requestPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) {
    return requestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermission implements GeolocationEvent {
  const factory _RequestPermission() = _$_RequestPermission;
}

/// @nodoc
abstract class _$$_RequestCurrentLocationCopyWith<$Res> {
  factory _$$_RequestCurrentLocationCopyWith(_$_RequestCurrentLocation value,
          $Res Function(_$_RequestCurrentLocation) then) =
      __$$_RequestCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestCurrentLocationCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$_RequestCurrentLocation>
    implements _$$_RequestCurrentLocationCopyWith<$Res> {
  __$$_RequestCurrentLocationCopyWithImpl(_$_RequestCurrentLocation _value,
      $Res Function(_$_RequestCurrentLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestCurrentLocation implements _RequestCurrentLocation {
  const _$_RequestCurrentLocation();

  @override
  String toString() {
    return 'GeolocationEvent.requestCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) {
    return requestCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) {
    return requestCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestCurrentLocation != null) {
      return requestCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) {
    return requestCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) {
    return requestCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestCurrentLocation != null) {
      return requestCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _RequestCurrentLocation implements GeolocationEvent {
  const factory _RequestCurrentLocation() = _$_RequestCurrentLocation;
}

/// @nodoc
abstract class _$$_RequestCurrentLocationStreamCopyWith<$Res> {
  factory _$$_RequestCurrentLocationStreamCopyWith(
          _$_RequestCurrentLocationStream value,
          $Res Function(_$_RequestCurrentLocationStream) then) =
      __$$_RequestCurrentLocationStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestCurrentLocationStreamCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res,
        _$_RequestCurrentLocationStream>
    implements _$$_RequestCurrentLocationStreamCopyWith<$Res> {
  __$$_RequestCurrentLocationStreamCopyWithImpl(
      _$_RequestCurrentLocationStream _value,
      $Res Function(_$_RequestCurrentLocationStream) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestCurrentLocationStream implements _RequestCurrentLocationStream {
  const _$_RequestCurrentLocationStream();

  @override
  String toString() {
    return 'GeolocationEvent.requestCurrentLocationStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCurrentLocationStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) {
    return requestCurrentLocationStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) {
    return requestCurrentLocationStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestCurrentLocationStream != null) {
      return requestCurrentLocationStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) {
    return requestCurrentLocationStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) {
    return requestCurrentLocationStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (requestCurrentLocationStream != null) {
      return requestCurrentLocationStream(this);
    }
    return orElse();
  }
}

abstract class _RequestCurrentLocationStream implements GeolocationEvent {
  const factory _RequestCurrentLocationStream() =
      _$_RequestCurrentLocationStream;
}

/// @nodoc
abstract class _$$_UpdateLocationCopyWith<$Res> {
  factory _$$_UpdateLocationCopyWith(
          _$_UpdateLocation value, $Res Function(_$_UpdateLocation) then) =
      __$$_UpdateLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$_UpdateLocationCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$_UpdateLocation>
    implements _$$_UpdateLocationCopyWith<$Res> {
  __$$_UpdateLocationCopyWithImpl(
      _$_UpdateLocation _value, $Res Function(_$_UpdateLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$_UpdateLocation(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_UpdateLocation implements _UpdateLocation {
  const _$_UpdateLocation(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GeolocationEvent.updateLocation(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLocation &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLocationCopyWith<_$_UpdateLocation> get copyWith =>
      __$$_UpdateLocationCopyWithImpl<_$_UpdateLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() requestPermission,
    required TResult Function() requestCurrentLocation,
    required TResult Function() requestCurrentLocationStream,
    required TResult Function(Position position) updateLocation,
  }) {
    return updateLocation(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? requestPermission,
    TResult? Function()? requestCurrentLocation,
    TResult? Function()? requestCurrentLocationStream,
    TResult? Function(Position position)? updateLocation,
  }) {
    return updateLocation?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? requestPermission,
    TResult Function()? requestCurrentLocation,
    TResult Function()? requestCurrentLocationStream,
    TResult Function(Position position)? updateLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_RequestCurrentLocation value)
        requestCurrentLocation,
    required TResult Function(_RequestCurrentLocationStream value)
        requestCurrentLocationStream,
    required TResult Function(_UpdateLocation value) updateLocation,
  }) {
    return updateLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult? Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult? Function(_UpdateLocation value)? updateLocation,
  }) {
    return updateLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_RequestCurrentLocation value)? requestCurrentLocation,
    TResult Function(_RequestCurrentLocationStream value)?
        requestCurrentLocationStream,
    TResult Function(_UpdateLocation value)? updateLocation,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateLocation implements GeolocationEvent {
  const factory _UpdateLocation(final Position position) = _$_UpdateLocation;

  Position get position;
  @JsonKey(ignore: true)
  _$$_UpdateLocationCopyWith<_$_UpdateLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeolocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationStateCopyWith<$Res> {
  factory $GeolocationStateCopyWith(
          GeolocationState value, $Res Function(GeolocationState) then) =
      _$GeolocationStateCopyWithImpl<$Res, GeolocationState>;
}

/// @nodoc
class _$GeolocationStateCopyWithImpl<$Res, $Val extends GeolocationState>
    implements $GeolocationStateCopyWith<$Res> {
  _$GeolocationStateCopyWithImpl(this._value, this._then);

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
    extends _$GeolocationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GeolocationState.initial()';
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
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
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
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GeolocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PermissionLoadingCopyWith<$Res> {
  factory _$$_PermissionLoadingCopyWith(_$_PermissionLoading value,
          $Res Function(_$_PermissionLoading) then) =
      __$$_PermissionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PermissionLoadingCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_PermissionLoading>
    implements _$$_PermissionLoadingCopyWith<$Res> {
  __$$_PermissionLoadingCopyWithImpl(
      _$_PermissionLoading _value, $Res Function(_$_PermissionLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PermissionLoading implements _PermissionLoading {
  const _$_PermissionLoading();

  @override
  String toString() {
    return 'GeolocationState.permissionLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PermissionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return permissionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return permissionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (permissionLoading != null) {
      return permissionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return permissionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return permissionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (permissionLoading != null) {
      return permissionLoading(this);
    }
    return orElse();
  }
}

abstract class _PermissionLoading implements GeolocationState {
  const factory _PermissionLoading() = _$_PermissionLoading;
}

/// @nodoc
abstract class _$$_PermissionLoadedCopyWith<$Res> {
  factory _$$_PermissionLoadedCopyWith(
          _$_PermissionLoaded value, $Res Function(_$_PermissionLoaded) then) =
      __$$_PermissionLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionStatus status});
}

/// @nodoc
class __$$_PermissionLoadedCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_PermissionLoaded>
    implements _$$_PermissionLoadedCopyWith<$Res> {
  __$$_PermissionLoadedCopyWithImpl(
      _$_PermissionLoaded _value, $Res Function(_$_PermissionLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_PermissionLoaded(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus,
    ));
  }
}

/// @nodoc

class _$_PermissionLoaded implements _PermissionLoaded {
  const _$_PermissionLoaded(this.status);

  @override
  final PermissionStatus status;

  @override
  String toString() {
    return 'GeolocationState.permissionLoaded(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermissionLoaded &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionLoadedCopyWith<_$_PermissionLoaded> get copyWith =>
      __$$_PermissionLoadedCopyWithImpl<_$_PermissionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return permissionLoaded(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return permissionLoaded?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (permissionLoaded != null) {
      return permissionLoaded(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return permissionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return permissionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (permissionLoaded != null) {
      return permissionLoaded(this);
    }
    return orElse();
  }
}

abstract class _PermissionLoaded implements GeolocationState {
  const factory _PermissionLoaded(final PermissionStatus status) =
      _$_PermissionLoaded;

  PermissionStatus get status;
  @JsonKey(ignore: true)
  _$$_PermissionLoadedCopyWith<_$_PermissionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GeolocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GeolocationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$_Update(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GeolocationState.locationUpdate(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return locationUpdate(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return locationUpdate?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (locationUpdate != null) {
      return locationUpdate(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return locationUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return locationUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (locationUpdate != null) {
      return locationUpdate(this);
    }
    return orElse();
  }
}

abstract class _Update implements GeolocationState {
  const factory _Update(final Position position) = _$_Update;

  Position get position;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'GeolocationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() permissionLoading,
    required TResult Function(PermissionStatus status) permissionLoaded,
    required TResult Function() loading,
    required TResult Function(Position position) locationUpdate,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? permissionLoading,
    TResult? Function(PermissionStatus status)? permissionLoaded,
    TResult? Function()? loading,
    TResult? Function(Position position)? locationUpdate,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? permissionLoading,
    TResult Function(PermissionStatus status)? permissionLoaded,
    TResult Function()? loading,
    TResult Function(Position position)? locationUpdate,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PermissionLoading value) permissionLoading,
    required TResult Function(_PermissionLoaded value) permissionLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Update value) locationUpdate,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PermissionLoading value)? permissionLoading,
    TResult? Function(_PermissionLoaded value)? permissionLoaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Update value)? locationUpdate,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PermissionLoading value)? permissionLoading,
    TResult Function(_PermissionLoaded value)? permissionLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Update value)? locationUpdate,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GeolocationState {
  const factory _Error() = _$_Error;
}
