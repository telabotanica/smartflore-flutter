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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GeolocationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RequestPermissionImplCopyWith<$Res> {
  factory _$$RequestPermissionImplCopyWith(_$RequestPermissionImpl value,
          $Res Function(_$RequestPermissionImpl) then) =
      __$$RequestPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestPermissionImplCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$RequestPermissionImpl>
    implements _$$RequestPermissionImplCopyWith<$Res> {
  __$$RequestPermissionImplCopyWithImpl(_$RequestPermissionImpl _value,
      $Res Function(_$RequestPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestPermissionImpl implements _RequestPermission {
  const _$RequestPermissionImpl();

  @override
  String toString() {
    return 'GeolocationEvent.requestPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestPermissionImpl);
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
  const factory _RequestPermission() = _$RequestPermissionImpl;
}

/// @nodoc
abstract class _$$RequestCurrentLocationImplCopyWith<$Res> {
  factory _$$RequestCurrentLocationImplCopyWith(
          _$RequestCurrentLocationImpl value,
          $Res Function(_$RequestCurrentLocationImpl) then) =
      __$$RequestCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCurrentLocationImplCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$RequestCurrentLocationImpl>
    implements _$$RequestCurrentLocationImplCopyWith<$Res> {
  __$$RequestCurrentLocationImplCopyWithImpl(
      _$RequestCurrentLocationImpl _value,
      $Res Function(_$RequestCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestCurrentLocationImpl implements _RequestCurrentLocation {
  const _$RequestCurrentLocationImpl();

  @override
  String toString() {
    return 'GeolocationEvent.requestCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCurrentLocationImpl);
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
  const factory _RequestCurrentLocation() = _$RequestCurrentLocationImpl;
}

/// @nodoc
abstract class _$$RequestCurrentLocationStreamImplCopyWith<$Res> {
  factory _$$RequestCurrentLocationStreamImplCopyWith(
          _$RequestCurrentLocationStreamImpl value,
          $Res Function(_$RequestCurrentLocationStreamImpl) then) =
      __$$RequestCurrentLocationStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCurrentLocationStreamImplCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res,
        _$RequestCurrentLocationStreamImpl>
    implements _$$RequestCurrentLocationStreamImplCopyWith<$Res> {
  __$$RequestCurrentLocationStreamImplCopyWithImpl(
      _$RequestCurrentLocationStreamImpl _value,
      $Res Function(_$RequestCurrentLocationStreamImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestCurrentLocationStreamImpl
    implements _RequestCurrentLocationStream {
  const _$RequestCurrentLocationStreamImpl();

  @override
  String toString() {
    return 'GeolocationEvent.requestCurrentLocationStream()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCurrentLocationStreamImpl);
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
      _$RequestCurrentLocationStreamImpl;
}

/// @nodoc
abstract class _$$UpdateLocationImplCopyWith<$Res> {
  factory _$$UpdateLocationImplCopyWith(_$UpdateLocationImpl value,
          $Res Function(_$UpdateLocationImpl) then) =
      __$$UpdateLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$UpdateLocationImplCopyWithImpl<$Res>
    extends _$GeolocationEventCopyWithImpl<$Res, _$UpdateLocationImpl>
    implements _$$UpdateLocationImplCopyWith<$Res> {
  __$$UpdateLocationImplCopyWithImpl(
      _$UpdateLocationImpl _value, $Res Function(_$UpdateLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$UpdateLocationImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$UpdateLocationImpl implements _UpdateLocation {
  const _$UpdateLocationImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GeolocationEvent.updateLocation(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLocationImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
      __$$UpdateLocationImplCopyWithImpl<_$UpdateLocationImpl>(
          this, _$identity);

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
  const factory _UpdateLocation(final Position position) = _$UpdateLocationImpl;

  Position get position;
  @JsonKey(ignore: true)
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GeolocationState.initial()';
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PermissionLoadingImplCopyWith<$Res> {
  factory _$$PermissionLoadingImplCopyWith(_$PermissionLoadingImpl value,
          $Res Function(_$PermissionLoadingImpl) then) =
      __$$PermissionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionLoadingImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$PermissionLoadingImpl>
    implements _$$PermissionLoadingImplCopyWith<$Res> {
  __$$PermissionLoadingImplCopyWithImpl(_$PermissionLoadingImpl _value,
      $Res Function(_$PermissionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionLoadingImpl implements _PermissionLoading {
  const _$PermissionLoadingImpl();

  @override
  String toString() {
    return 'GeolocationState.permissionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionLoadingImpl);
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
  const factory _PermissionLoading() = _$PermissionLoadingImpl;
}

/// @nodoc
abstract class _$$PermissionLoadedImplCopyWith<$Res> {
  factory _$$PermissionLoadedImplCopyWith(_$PermissionLoadedImpl value,
          $Res Function(_$PermissionLoadedImpl) then) =
      __$$PermissionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionStatus status});
}

/// @nodoc
class __$$PermissionLoadedImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$PermissionLoadedImpl>
    implements _$$PermissionLoadedImplCopyWith<$Res> {
  __$$PermissionLoadedImplCopyWithImpl(_$PermissionLoadedImpl _value,
      $Res Function(_$PermissionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$PermissionLoadedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus,
    ));
  }
}

/// @nodoc

class _$PermissionLoadedImpl implements _PermissionLoaded {
  const _$PermissionLoadedImpl(this.status);

  @override
  final PermissionStatus status;

  @override
  String toString() {
    return 'GeolocationState.permissionLoaded(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionLoadedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionLoadedImplCopyWith<_$PermissionLoadedImpl> get copyWith =>
      __$$PermissionLoadedImplCopyWithImpl<_$PermissionLoadedImpl>(
          this, _$identity);

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
      _$PermissionLoadedImpl;

  PermissionStatus get status;
  @JsonKey(ignore: true)
  _$$PermissionLoadedImplCopyWith<_$PermissionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GeolocationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
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
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$UpdateImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GeolocationState.locationUpdate(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

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
  const factory _Update(final Position position) = _$UpdateImpl;

  Position get position;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'GeolocationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
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
  const factory _Error() = _$ErrorImpl;
}
