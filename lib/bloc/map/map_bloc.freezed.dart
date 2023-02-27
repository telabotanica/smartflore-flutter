// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFollowMode) requestCenterMap,
    required TResult Function(MapMode mapMode) changeMapMode,
    required TResult Function(int trailID) requestTrailPreview,
    required TResult Function(FollowMode followMode) changeFollowMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFollowMode)? requestCenterMap,
    TResult? Function(MapMode mapMode)? changeMapMode,
    TResult? Function(int trailID)? requestTrailPreview,
    TResult? Function(FollowMode followMode)? changeFollowMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFollowMode)? requestCenterMap,
    TResult Function(MapMode mapMode)? changeMapMode,
    TResult Function(int trailID)? requestTrailPreview,
    TResult Function(FollowMode followMode)? changeFollowMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCenterMap value) requestCenterMap,
    required TResult Function(_ChangeMapMode value) changeMapMode,
    required TResult Function(_RequestTrailPreview value) requestTrailPreview,
    required TResult Function(_ChangeFollowMode value) changeFollowMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCenterMap value)? requestCenterMap,
    TResult? Function(_ChangeMapMode value)? changeMapMode,
    TResult? Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult? Function(_ChangeFollowMode value)? changeFollowMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCenterMap value)? requestCenterMap,
    TResult Function(_ChangeMapMode value)? changeMapMode,
    TResult Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult Function(_ChangeFollowMode value)? changeFollowMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestCenterMapCopyWith<$Res> {
  factory _$$_RequestCenterMapCopyWith(
          _$_RequestCenterMap value, $Res Function(_$_RequestCenterMap) then) =
      __$$_RequestCenterMapCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFollowMode});
}

/// @nodoc
class __$$_RequestCenterMapCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_RequestCenterMap>
    implements _$$_RequestCenterMapCopyWith<$Res> {
  __$$_RequestCenterMapCopyWithImpl(
      _$_RequestCenterMap _value, $Res Function(_$_RequestCenterMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowMode = null,
  }) {
    return _then(_$_RequestCenterMap(
      null == isFollowMode
          ? _value.isFollowMode
          : isFollowMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RequestCenterMap implements _RequestCenterMap {
  const _$_RequestCenterMap(this.isFollowMode);

  @override
  final bool isFollowMode;

  @override
  String toString() {
    return 'MapEvent.requestCenterMap(isFollowMode: $isFollowMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestCenterMap &&
            (identical(other.isFollowMode, isFollowMode) ||
                other.isFollowMode == isFollowMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFollowMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCenterMapCopyWith<_$_RequestCenterMap> get copyWith =>
      __$$_RequestCenterMapCopyWithImpl<_$_RequestCenterMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFollowMode) requestCenterMap,
    required TResult Function(MapMode mapMode) changeMapMode,
    required TResult Function(int trailID) requestTrailPreview,
    required TResult Function(FollowMode followMode) changeFollowMode,
  }) {
    return requestCenterMap(isFollowMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFollowMode)? requestCenterMap,
    TResult? Function(MapMode mapMode)? changeMapMode,
    TResult? Function(int trailID)? requestTrailPreview,
    TResult? Function(FollowMode followMode)? changeFollowMode,
  }) {
    return requestCenterMap?.call(isFollowMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFollowMode)? requestCenterMap,
    TResult Function(MapMode mapMode)? changeMapMode,
    TResult Function(int trailID)? requestTrailPreview,
    TResult Function(FollowMode followMode)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (requestCenterMap != null) {
      return requestCenterMap(isFollowMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCenterMap value) requestCenterMap,
    required TResult Function(_ChangeMapMode value) changeMapMode,
    required TResult Function(_RequestTrailPreview value) requestTrailPreview,
    required TResult Function(_ChangeFollowMode value) changeFollowMode,
  }) {
    return requestCenterMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCenterMap value)? requestCenterMap,
    TResult? Function(_ChangeMapMode value)? changeMapMode,
    TResult? Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult? Function(_ChangeFollowMode value)? changeFollowMode,
  }) {
    return requestCenterMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCenterMap value)? requestCenterMap,
    TResult Function(_ChangeMapMode value)? changeMapMode,
    TResult Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult Function(_ChangeFollowMode value)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (requestCenterMap != null) {
      return requestCenterMap(this);
    }
    return orElse();
  }
}

abstract class _RequestCenterMap implements MapEvent {
  const factory _RequestCenterMap(final bool isFollowMode) =
      _$_RequestCenterMap;

  bool get isFollowMode;
  @JsonKey(ignore: true)
  _$$_RequestCenterMapCopyWith<_$_RequestCenterMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeMapModeCopyWith<$Res> {
  factory _$$_ChangeMapModeCopyWith(
          _$_ChangeMapMode value, $Res Function(_$_ChangeMapMode) then) =
      __$$_ChangeMapModeCopyWithImpl<$Res>;
  @useResult
  $Res call({MapMode mapMode});
}

/// @nodoc
class __$$_ChangeMapModeCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ChangeMapMode>
    implements _$$_ChangeMapModeCopyWith<$Res> {
  __$$_ChangeMapModeCopyWithImpl(
      _$_ChangeMapMode _value, $Res Function(_$_ChangeMapMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapMode = null,
  }) {
    return _then(_$_ChangeMapMode(
      null == mapMode
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
    ));
  }
}

/// @nodoc

class _$_ChangeMapMode implements _ChangeMapMode {
  const _$_ChangeMapMode(this.mapMode);

  @override
  final MapMode mapMode;

  @override
  String toString() {
    return 'MapEvent.changeMapMode(mapMode: $mapMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMapMode &&
            (identical(other.mapMode, mapMode) || other.mapMode == mapMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeMapModeCopyWith<_$_ChangeMapMode> get copyWith =>
      __$$_ChangeMapModeCopyWithImpl<_$_ChangeMapMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFollowMode) requestCenterMap,
    required TResult Function(MapMode mapMode) changeMapMode,
    required TResult Function(int trailID) requestTrailPreview,
    required TResult Function(FollowMode followMode) changeFollowMode,
  }) {
    return changeMapMode(mapMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFollowMode)? requestCenterMap,
    TResult? Function(MapMode mapMode)? changeMapMode,
    TResult? Function(int trailID)? requestTrailPreview,
    TResult? Function(FollowMode followMode)? changeFollowMode,
  }) {
    return changeMapMode?.call(mapMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFollowMode)? requestCenterMap,
    TResult Function(MapMode mapMode)? changeMapMode,
    TResult Function(int trailID)? requestTrailPreview,
    TResult Function(FollowMode followMode)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (changeMapMode != null) {
      return changeMapMode(mapMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCenterMap value) requestCenterMap,
    required TResult Function(_ChangeMapMode value) changeMapMode,
    required TResult Function(_RequestTrailPreview value) requestTrailPreview,
    required TResult Function(_ChangeFollowMode value) changeFollowMode,
  }) {
    return changeMapMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCenterMap value)? requestCenterMap,
    TResult? Function(_ChangeMapMode value)? changeMapMode,
    TResult? Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult? Function(_ChangeFollowMode value)? changeFollowMode,
  }) {
    return changeMapMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCenterMap value)? requestCenterMap,
    TResult Function(_ChangeMapMode value)? changeMapMode,
    TResult Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult Function(_ChangeFollowMode value)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (changeMapMode != null) {
      return changeMapMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeMapMode implements MapEvent {
  const factory _ChangeMapMode(final MapMode mapMode) = _$_ChangeMapMode;

  MapMode get mapMode;
  @JsonKey(ignore: true)
  _$$_ChangeMapModeCopyWith<_$_ChangeMapMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestTrailPreviewCopyWith<$Res> {
  factory _$$_RequestTrailPreviewCopyWith(_$_RequestTrailPreview value,
          $Res Function(_$_RequestTrailPreview) then) =
      __$$_RequestTrailPreviewCopyWithImpl<$Res>;
  @useResult
  $Res call({int trailID});
}

/// @nodoc
class __$$_RequestTrailPreviewCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_RequestTrailPreview>
    implements _$$_RequestTrailPreviewCopyWith<$Res> {
  __$$_RequestTrailPreviewCopyWithImpl(_$_RequestTrailPreview _value,
      $Res Function(_$_RequestTrailPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailID = null,
  }) {
    return _then(_$_RequestTrailPreview(
      null == trailID
          ? _value.trailID
          : trailID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestTrailPreview implements _RequestTrailPreview {
  const _$_RequestTrailPreview(this.trailID);

  @override
  final int trailID;

  @override
  String toString() {
    return 'MapEvent.requestTrailPreview(trailID: $trailID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestTrailPreview &&
            (identical(other.trailID, trailID) || other.trailID == trailID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trailID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestTrailPreviewCopyWith<_$_RequestTrailPreview> get copyWith =>
      __$$_RequestTrailPreviewCopyWithImpl<_$_RequestTrailPreview>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFollowMode) requestCenterMap,
    required TResult Function(MapMode mapMode) changeMapMode,
    required TResult Function(int trailID) requestTrailPreview,
    required TResult Function(FollowMode followMode) changeFollowMode,
  }) {
    return requestTrailPreview(trailID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFollowMode)? requestCenterMap,
    TResult? Function(MapMode mapMode)? changeMapMode,
    TResult? Function(int trailID)? requestTrailPreview,
    TResult? Function(FollowMode followMode)? changeFollowMode,
  }) {
    return requestTrailPreview?.call(trailID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFollowMode)? requestCenterMap,
    TResult Function(MapMode mapMode)? changeMapMode,
    TResult Function(int trailID)? requestTrailPreview,
    TResult Function(FollowMode followMode)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (requestTrailPreview != null) {
      return requestTrailPreview(trailID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCenterMap value) requestCenterMap,
    required TResult Function(_ChangeMapMode value) changeMapMode,
    required TResult Function(_RequestTrailPreview value) requestTrailPreview,
    required TResult Function(_ChangeFollowMode value) changeFollowMode,
  }) {
    return requestTrailPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCenterMap value)? requestCenterMap,
    TResult? Function(_ChangeMapMode value)? changeMapMode,
    TResult? Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult? Function(_ChangeFollowMode value)? changeFollowMode,
  }) {
    return requestTrailPreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCenterMap value)? requestCenterMap,
    TResult Function(_ChangeMapMode value)? changeMapMode,
    TResult Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult Function(_ChangeFollowMode value)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (requestTrailPreview != null) {
      return requestTrailPreview(this);
    }
    return orElse();
  }
}

abstract class _RequestTrailPreview implements MapEvent {
  const factory _RequestTrailPreview(final int trailID) =
      _$_RequestTrailPreview;

  int get trailID;
  @JsonKey(ignore: true)
  _$$_RequestTrailPreviewCopyWith<_$_RequestTrailPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeFollowModeCopyWith<$Res> {
  factory _$$_ChangeFollowModeCopyWith(
          _$_ChangeFollowMode value, $Res Function(_$_ChangeFollowMode) then) =
      __$$_ChangeFollowModeCopyWithImpl<$Res>;
  @useResult
  $Res call({FollowMode followMode});
}

/// @nodoc
class __$$_ChangeFollowModeCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$_ChangeFollowMode>
    implements _$$_ChangeFollowModeCopyWith<$Res> {
  __$$_ChangeFollowModeCopyWithImpl(
      _$_ChangeFollowMode _value, $Res Function(_$_ChangeFollowMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
  }) {
    return _then(_$_ChangeFollowMode(
      null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as FollowMode,
    ));
  }
}

/// @nodoc

class _$_ChangeFollowMode implements _ChangeFollowMode {
  const _$_ChangeFollowMode(this.followMode);

  @override
  final FollowMode followMode;

  @override
  String toString() {
    return 'MapEvent.changeFollowMode(followMode: $followMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFollowMode &&
            (identical(other.followMode, followMode) ||
                other.followMode == followMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFollowModeCopyWith<_$_ChangeFollowMode> get copyWith =>
      __$$_ChangeFollowModeCopyWithImpl<_$_ChangeFollowMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFollowMode) requestCenterMap,
    required TResult Function(MapMode mapMode) changeMapMode,
    required TResult Function(int trailID) requestTrailPreview,
    required TResult Function(FollowMode followMode) changeFollowMode,
  }) {
    return changeFollowMode(followMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFollowMode)? requestCenterMap,
    TResult? Function(MapMode mapMode)? changeMapMode,
    TResult? Function(int trailID)? requestTrailPreview,
    TResult? Function(FollowMode followMode)? changeFollowMode,
  }) {
    return changeFollowMode?.call(followMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFollowMode)? requestCenterMap,
    TResult Function(MapMode mapMode)? changeMapMode,
    TResult Function(int trailID)? requestTrailPreview,
    TResult Function(FollowMode followMode)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (changeFollowMode != null) {
      return changeFollowMode(followMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCenterMap value) requestCenterMap,
    required TResult Function(_ChangeMapMode value) changeMapMode,
    required TResult Function(_RequestTrailPreview value) requestTrailPreview,
    required TResult Function(_ChangeFollowMode value) changeFollowMode,
  }) {
    return changeFollowMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCenterMap value)? requestCenterMap,
    TResult? Function(_ChangeMapMode value)? changeMapMode,
    TResult? Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult? Function(_ChangeFollowMode value)? changeFollowMode,
  }) {
    return changeFollowMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCenterMap value)? requestCenterMap,
    TResult Function(_ChangeMapMode value)? changeMapMode,
    TResult Function(_RequestTrailPreview value)? requestTrailPreview,
    TResult Function(_ChangeFollowMode value)? changeFollowMode,
    required TResult orElse(),
  }) {
    if (changeFollowMode != null) {
      return changeFollowMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeFollowMode implements MapEvent {
  const factory _ChangeFollowMode(final FollowMode followMode) =
      _$_ChangeFollowMode;

  FollowMode get followMode;
  @JsonKey(ignore: true)
  _$$_ChangeFollowModeCopyWith<_$_ChangeFollowMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

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
    extends _$MapStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MapState.initial()';
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
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
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
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnRecenterMapCopyWith<$Res> {
  factory _$$_OnRecenterMapCopyWith(
          _$_OnRecenterMap value, $Res Function(_$_OnRecenterMap) then) =
      __$$_OnRecenterMapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnRecenterMapCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_OnRecenterMap>
    implements _$$_OnRecenterMapCopyWith<$Res> {
  __$$_OnRecenterMapCopyWithImpl(
      _$_OnRecenterMap _value, $Res Function(_$_OnRecenterMap) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnRecenterMap implements _OnRecenterMap {
  const _$_OnRecenterMap();

  @override
  String toString() {
    return 'MapState.onRecenterMap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnRecenterMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) {
    return onRecenterMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) {
    return onRecenterMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onRecenterMap != null) {
      return onRecenterMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) {
    return onRecenterMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) {
    return onRecenterMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onRecenterMap != null) {
      return onRecenterMap(this);
    }
    return orElse();
  }
}

abstract class _OnRecenterMap implements MapState {
  const factory _OnRecenterMap() = _$_OnRecenterMap;
}

/// @nodoc
abstract class _$$_OnMapModeChangedCopyWith<$Res> {
  factory _$$_OnMapModeChangedCopyWith(
          _$_OnMapModeChanged value, $Res Function(_$_OnMapModeChanged) then) =
      __$$_OnMapModeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({MapMode mapMode});
}

/// @nodoc
class __$$_OnMapModeChangedCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_OnMapModeChanged>
    implements _$$_OnMapModeChangedCopyWith<$Res> {
  __$$_OnMapModeChangedCopyWithImpl(
      _$_OnMapModeChanged _value, $Res Function(_$_OnMapModeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapMode = null,
  }) {
    return _then(_$_OnMapModeChanged(
      null == mapMode
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
    ));
  }
}

/// @nodoc

class _$_OnMapModeChanged implements _OnMapModeChanged {
  const _$_OnMapModeChanged(this.mapMode);

  @override
  final MapMode mapMode;

  @override
  String toString() {
    return 'MapState.onMapModeChanged(mapMode: $mapMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnMapModeChanged &&
            (identical(other.mapMode, mapMode) || other.mapMode == mapMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnMapModeChangedCopyWith<_$_OnMapModeChanged> get copyWith =>
      __$$_OnMapModeChangedCopyWithImpl<_$_OnMapModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) {
    return onMapModeChanged(mapMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) {
    return onMapModeChanged?.call(mapMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onMapModeChanged != null) {
      return onMapModeChanged(mapMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) {
    return onMapModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) {
    return onMapModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onMapModeChanged != null) {
      return onMapModeChanged(this);
    }
    return orElse();
  }
}

abstract class _OnMapModeChanged implements MapState {
  const factory _OnMapModeChanged(final MapMode mapMode) = _$_OnMapModeChanged;

  MapMode get mapMode;
  @JsonKey(ignore: true)
  _$$_OnMapModeChangedCopyWith<_$_OnMapModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnRequestTrailPreviewCopyWith<$Res> {
  factory _$$_OnRequestTrailPreviewCopyWith(_$_OnRequestTrailPreview value,
          $Res Function(_$_OnRequestTrailPreview) then) =
      __$$_OnRequestTrailPreviewCopyWithImpl<$Res>;
  @useResult
  $Res call({int trailID});
}

/// @nodoc
class __$$_OnRequestTrailPreviewCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_OnRequestTrailPreview>
    implements _$$_OnRequestTrailPreviewCopyWith<$Res> {
  __$$_OnRequestTrailPreviewCopyWithImpl(_$_OnRequestTrailPreview _value,
      $Res Function(_$_OnRequestTrailPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailID = null,
  }) {
    return _then(_$_OnRequestTrailPreview(
      null == trailID
          ? _value.trailID
          : trailID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnRequestTrailPreview implements _OnRequestTrailPreview {
  const _$_OnRequestTrailPreview(this.trailID);

  @override
  final int trailID;

  @override
  String toString() {
    return 'MapState.onRequestTrailPreview(trailID: $trailID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnRequestTrailPreview &&
            (identical(other.trailID, trailID) || other.trailID == trailID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trailID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnRequestTrailPreviewCopyWith<_$_OnRequestTrailPreview> get copyWith =>
      __$$_OnRequestTrailPreviewCopyWithImpl<_$_OnRequestTrailPreview>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) {
    return onRequestTrailPreview(trailID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) {
    return onRequestTrailPreview?.call(trailID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onRequestTrailPreview != null) {
      return onRequestTrailPreview(trailID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) {
    return onRequestTrailPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) {
    return onRequestTrailPreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onRequestTrailPreview != null) {
      return onRequestTrailPreview(this);
    }
    return orElse();
  }
}

abstract class _OnRequestTrailPreview implements MapState {
  const factory _OnRequestTrailPreview(final int trailID) =
      _$_OnRequestTrailPreview;

  int get trailID;
  @JsonKey(ignore: true)
  _$$_OnRequestTrailPreviewCopyWith<_$_OnRequestTrailPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnFollowModeChangedCopyWith<$Res> {
  factory _$$_OnFollowModeChangedCopyWith(_$_OnFollowModeChanged value,
          $Res Function(_$_OnFollowModeChanged) then) =
      __$$_OnFollowModeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({FollowMode followMode});
}

/// @nodoc
class __$$_OnFollowModeChangedCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_OnFollowModeChanged>
    implements _$$_OnFollowModeChangedCopyWith<$Res> {
  __$$_OnFollowModeChangedCopyWithImpl(_$_OnFollowModeChanged _value,
      $Res Function(_$_OnFollowModeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
  }) {
    return _then(_$_OnFollowModeChanged(
      null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as FollowMode,
    ));
  }
}

/// @nodoc

class _$_OnFollowModeChanged implements _OnFollowModeChanged {
  const _$_OnFollowModeChanged(this.followMode);

  @override
  final FollowMode followMode;

  @override
  String toString() {
    return 'MapState.onFollowModeChanged(followMode: $followMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnFollowModeChanged &&
            (identical(other.followMode, followMode) ||
                other.followMode == followMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnFollowModeChangedCopyWith<_$_OnFollowModeChanged> get copyWith =>
      __$$_OnFollowModeChangedCopyWithImpl<_$_OnFollowModeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRecenterMap,
    required TResult Function(MapMode mapMode) onMapModeChanged,
    required TResult Function(int trailID) onRequestTrailPreview,
    required TResult Function(FollowMode followMode) onFollowModeChanged,
  }) {
    return onFollowModeChanged(followMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRecenterMap,
    TResult? Function(MapMode mapMode)? onMapModeChanged,
    TResult? Function(int trailID)? onRequestTrailPreview,
    TResult? Function(FollowMode followMode)? onFollowModeChanged,
  }) {
    return onFollowModeChanged?.call(followMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRecenterMap,
    TResult Function(MapMode mapMode)? onMapModeChanged,
    TResult Function(int trailID)? onRequestTrailPreview,
    TResult Function(FollowMode followMode)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onFollowModeChanged != null) {
      return onFollowModeChanged(followMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRecenterMap value) onRecenterMap,
    required TResult Function(_OnMapModeChanged value) onMapModeChanged,
    required TResult Function(_OnRequestTrailPreview value)
        onRequestTrailPreview,
    required TResult Function(_OnFollowModeChanged value) onFollowModeChanged,
  }) {
    return onFollowModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRecenterMap value)? onRecenterMap,
    TResult? Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult? Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult? Function(_OnFollowModeChanged value)? onFollowModeChanged,
  }) {
    return onFollowModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRecenterMap value)? onRecenterMap,
    TResult Function(_OnMapModeChanged value)? onMapModeChanged,
    TResult Function(_OnRequestTrailPreview value)? onRequestTrailPreview,
    TResult Function(_OnFollowModeChanged value)? onFollowModeChanged,
    required TResult orElse(),
  }) {
    if (onFollowModeChanged != null) {
      return onFollowModeChanged(this);
    }
    return orElse();
  }
}

abstract class _OnFollowModeChanged implements MapState {
  const factory _OnFollowModeChanged(final FollowMode followMode) =
      _$_OnFollowModeChanged;

  FollowMode get followMode;
  @JsonKey(ignore: true)
  _$$_OnFollowModeChangedCopyWith<_$_OnFollowModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
