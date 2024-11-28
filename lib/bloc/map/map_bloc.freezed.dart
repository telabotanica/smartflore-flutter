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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$RequestCenterMapImplCopyWith<$Res> {
  factory _$$RequestCenterMapImplCopyWith(_$RequestCenterMapImpl value,
          $Res Function(_$RequestCenterMapImpl) then) =
      __$$RequestCenterMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFollowMode});
}

/// @nodoc
class __$$RequestCenterMapImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$RequestCenterMapImpl>
    implements _$$RequestCenterMapImplCopyWith<$Res> {
  __$$RequestCenterMapImplCopyWithImpl(_$RequestCenterMapImpl _value,
      $Res Function(_$RequestCenterMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowMode = null,
  }) {
    return _then(_$RequestCenterMapImpl(
      null == isFollowMode
          ? _value.isFollowMode
          : isFollowMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RequestCenterMapImpl implements _RequestCenterMap {
  const _$RequestCenterMapImpl(this.isFollowMode);

  @override
  final bool isFollowMode;

  @override
  String toString() {
    return 'MapEvent.requestCenterMap(isFollowMode: $isFollowMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCenterMapImpl &&
            (identical(other.isFollowMode, isFollowMode) ||
                other.isFollowMode == isFollowMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFollowMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCenterMapImplCopyWith<_$RequestCenterMapImpl> get copyWith =>
      __$$RequestCenterMapImplCopyWithImpl<_$RequestCenterMapImpl>(
          this, _$identity);

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
      _$RequestCenterMapImpl;

  bool get isFollowMode;
  @JsonKey(ignore: true)
  _$$RequestCenterMapImplCopyWith<_$RequestCenterMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeMapModeImplCopyWith<$Res> {
  factory _$$ChangeMapModeImplCopyWith(
          _$ChangeMapModeImpl value, $Res Function(_$ChangeMapModeImpl) then) =
      __$$ChangeMapModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapMode mapMode});
}

/// @nodoc
class __$$ChangeMapModeImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$ChangeMapModeImpl>
    implements _$$ChangeMapModeImplCopyWith<$Res> {
  __$$ChangeMapModeImplCopyWithImpl(
      _$ChangeMapModeImpl _value, $Res Function(_$ChangeMapModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapMode = null,
  }) {
    return _then(_$ChangeMapModeImpl(
      null == mapMode
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
    ));
  }
}

/// @nodoc

class _$ChangeMapModeImpl implements _ChangeMapMode {
  const _$ChangeMapModeImpl(this.mapMode);

  @override
  final MapMode mapMode;

  @override
  String toString() {
    return 'MapEvent.changeMapMode(mapMode: $mapMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMapModeImpl &&
            (identical(other.mapMode, mapMode) || other.mapMode == mapMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMapModeImplCopyWith<_$ChangeMapModeImpl> get copyWith =>
      __$$ChangeMapModeImplCopyWithImpl<_$ChangeMapModeImpl>(this, _$identity);

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
  const factory _ChangeMapMode(final MapMode mapMode) = _$ChangeMapModeImpl;

  MapMode get mapMode;
  @JsonKey(ignore: true)
  _$$ChangeMapModeImplCopyWith<_$ChangeMapModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestTrailPreviewImplCopyWith<$Res> {
  factory _$$RequestTrailPreviewImplCopyWith(_$RequestTrailPreviewImpl value,
          $Res Function(_$RequestTrailPreviewImpl) then) =
      __$$RequestTrailPreviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int trailID});
}

/// @nodoc
class __$$RequestTrailPreviewImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$RequestTrailPreviewImpl>
    implements _$$RequestTrailPreviewImplCopyWith<$Res> {
  __$$RequestTrailPreviewImplCopyWithImpl(_$RequestTrailPreviewImpl _value,
      $Res Function(_$RequestTrailPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailID = null,
  }) {
    return _then(_$RequestTrailPreviewImpl(
      null == trailID
          ? _value.trailID
          : trailID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestTrailPreviewImpl implements _RequestTrailPreview {
  const _$RequestTrailPreviewImpl(this.trailID);

  @override
  final int trailID;

  @override
  String toString() {
    return 'MapEvent.requestTrailPreview(trailID: $trailID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTrailPreviewImpl &&
            (identical(other.trailID, trailID) || other.trailID == trailID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trailID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTrailPreviewImplCopyWith<_$RequestTrailPreviewImpl> get copyWith =>
      __$$RequestTrailPreviewImplCopyWithImpl<_$RequestTrailPreviewImpl>(
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
      _$RequestTrailPreviewImpl;

  int get trailID;
  @JsonKey(ignore: true)
  _$$RequestTrailPreviewImplCopyWith<_$RequestTrailPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFollowModeImplCopyWith<$Res> {
  factory _$$ChangeFollowModeImplCopyWith(_$ChangeFollowModeImpl value,
          $Res Function(_$ChangeFollowModeImpl) then) =
      __$$ChangeFollowModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FollowMode followMode});
}

/// @nodoc
class __$$ChangeFollowModeImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$ChangeFollowModeImpl>
    implements _$$ChangeFollowModeImplCopyWith<$Res> {
  __$$ChangeFollowModeImplCopyWithImpl(_$ChangeFollowModeImpl _value,
      $Res Function(_$ChangeFollowModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
  }) {
    return _then(_$ChangeFollowModeImpl(
      null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as FollowMode,
    ));
  }
}

/// @nodoc

class _$ChangeFollowModeImpl implements _ChangeFollowMode {
  const _$ChangeFollowModeImpl(this.followMode);

  @override
  final FollowMode followMode;

  @override
  String toString() {
    return 'MapEvent.changeFollowMode(followMode: $followMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFollowModeImpl &&
            (identical(other.followMode, followMode) ||
                other.followMode == followMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFollowModeImplCopyWith<_$ChangeFollowModeImpl> get copyWith =>
      __$$ChangeFollowModeImplCopyWithImpl<_$ChangeFollowModeImpl>(
          this, _$identity);

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
      _$ChangeFollowModeImpl;

  FollowMode get followMode;
  @JsonKey(ignore: true)
  _$$ChangeFollowModeImplCopyWith<_$ChangeFollowModeImpl> get copyWith =>
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MapState.initial()';
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnRecenterMapImplCopyWith<$Res> {
  factory _$$OnRecenterMapImplCopyWith(
          _$OnRecenterMapImpl value, $Res Function(_$OnRecenterMapImpl) then) =
      __$$OnRecenterMapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRecenterMapImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$OnRecenterMapImpl>
    implements _$$OnRecenterMapImplCopyWith<$Res> {
  __$$OnRecenterMapImplCopyWithImpl(
      _$OnRecenterMapImpl _value, $Res Function(_$OnRecenterMapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnRecenterMapImpl implements _OnRecenterMap {
  const _$OnRecenterMapImpl();

  @override
  String toString() {
    return 'MapState.onRecenterMap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRecenterMapImpl);
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
  const factory _OnRecenterMap() = _$OnRecenterMapImpl;
}

/// @nodoc
abstract class _$$OnMapModeChangedImplCopyWith<$Res> {
  factory _$$OnMapModeChangedImplCopyWith(_$OnMapModeChangedImpl value,
          $Res Function(_$OnMapModeChangedImpl) then) =
      __$$OnMapModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapMode mapMode});
}

/// @nodoc
class __$$OnMapModeChangedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$OnMapModeChangedImpl>
    implements _$$OnMapModeChangedImplCopyWith<$Res> {
  __$$OnMapModeChangedImplCopyWithImpl(_$OnMapModeChangedImpl _value,
      $Res Function(_$OnMapModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapMode = null,
  }) {
    return _then(_$OnMapModeChangedImpl(
      null == mapMode
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
    ));
  }
}

/// @nodoc

class _$OnMapModeChangedImpl implements _OnMapModeChanged {
  const _$OnMapModeChangedImpl(this.mapMode);

  @override
  final MapMode mapMode;

  @override
  String toString() {
    return 'MapState.onMapModeChanged(mapMode: $mapMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapModeChangedImpl &&
            (identical(other.mapMode, mapMode) || other.mapMode == mapMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapModeChangedImplCopyWith<_$OnMapModeChangedImpl> get copyWith =>
      __$$OnMapModeChangedImplCopyWithImpl<_$OnMapModeChangedImpl>(
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
  const factory _OnMapModeChanged(final MapMode mapMode) =
      _$OnMapModeChangedImpl;

  MapMode get mapMode;
  @JsonKey(ignore: true)
  _$$OnMapModeChangedImplCopyWith<_$OnMapModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRequestTrailPreviewImplCopyWith<$Res> {
  factory _$$OnRequestTrailPreviewImplCopyWith(
          _$OnRequestTrailPreviewImpl value,
          $Res Function(_$OnRequestTrailPreviewImpl) then) =
      __$$OnRequestTrailPreviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int trailID});
}

/// @nodoc
class __$$OnRequestTrailPreviewImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$OnRequestTrailPreviewImpl>
    implements _$$OnRequestTrailPreviewImplCopyWith<$Res> {
  __$$OnRequestTrailPreviewImplCopyWithImpl(_$OnRequestTrailPreviewImpl _value,
      $Res Function(_$OnRequestTrailPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailID = null,
  }) {
    return _then(_$OnRequestTrailPreviewImpl(
      null == trailID
          ? _value.trailID
          : trailID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnRequestTrailPreviewImpl implements _OnRequestTrailPreview {
  const _$OnRequestTrailPreviewImpl(this.trailID);

  @override
  final int trailID;

  @override
  String toString() {
    return 'MapState.onRequestTrailPreview(trailID: $trailID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRequestTrailPreviewImpl &&
            (identical(other.trailID, trailID) || other.trailID == trailID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trailID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRequestTrailPreviewImplCopyWith<_$OnRequestTrailPreviewImpl>
      get copyWith => __$$OnRequestTrailPreviewImplCopyWithImpl<
          _$OnRequestTrailPreviewImpl>(this, _$identity);

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
      _$OnRequestTrailPreviewImpl;

  int get trailID;
  @JsonKey(ignore: true)
  _$$OnRequestTrailPreviewImplCopyWith<_$OnRequestTrailPreviewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFollowModeChangedImplCopyWith<$Res> {
  factory _$$OnFollowModeChangedImplCopyWith(_$OnFollowModeChangedImpl value,
          $Res Function(_$OnFollowModeChangedImpl) then) =
      __$$OnFollowModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FollowMode followMode});
}

/// @nodoc
class __$$OnFollowModeChangedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$OnFollowModeChangedImpl>
    implements _$$OnFollowModeChangedImplCopyWith<$Res> {
  __$$OnFollowModeChangedImplCopyWithImpl(_$OnFollowModeChangedImpl _value,
      $Res Function(_$OnFollowModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followMode = null,
  }) {
    return _then(_$OnFollowModeChangedImpl(
      null == followMode
          ? _value.followMode
          : followMode // ignore: cast_nullable_to_non_nullable
              as FollowMode,
    ));
  }
}

/// @nodoc

class _$OnFollowModeChangedImpl implements _OnFollowModeChanged {
  const _$OnFollowModeChangedImpl(this.followMode);

  @override
  final FollowMode followMode;

  @override
  String toString() {
    return 'MapState.onFollowModeChanged(followMode: $followMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFollowModeChangedImpl &&
            (identical(other.followMode, followMode) ||
                other.followMode == followMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFollowModeChangedImplCopyWith<_$OnFollowModeChangedImpl> get copyWith =>
      __$$OnFollowModeChangedImplCopyWithImpl<_$OnFollowModeChangedImpl>(
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
      _$OnFollowModeChangedImpl;

  FollowMode get followMode;
  @JsonKey(ignore: true)
  _$$OnFollowModeChangedImplCopyWith<_$OnFollowModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
