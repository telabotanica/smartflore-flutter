// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTrailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTrailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTrailsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTrailsData value) loadTrailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTrailsData value)? loadTrailsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTrailsData value)? loadTrailsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsEventCopyWith<$Res> {
  factory $TrailsEventCopyWith(
          TrailsEvent value, $Res Function(TrailsEvent) then) =
      _$TrailsEventCopyWithImpl<$Res, TrailsEvent>;
}

/// @nodoc
class _$TrailsEventCopyWithImpl<$Res, $Val extends TrailsEvent>
    implements $TrailsEventCopyWith<$Res> {
  _$TrailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTrailsDataImplCopyWith<$Res> {
  factory _$$LoadTrailsDataImplCopyWith(_$LoadTrailsDataImpl value,
          $Res Function(_$LoadTrailsDataImpl) then) =
      __$$LoadTrailsDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTrailsDataImplCopyWithImpl<$Res>
    extends _$TrailsEventCopyWithImpl<$Res, _$LoadTrailsDataImpl>
    implements _$$LoadTrailsDataImplCopyWith<$Res> {
  __$$LoadTrailsDataImplCopyWithImpl(
      _$LoadTrailsDataImpl _value, $Res Function(_$LoadTrailsDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTrailsDataImpl implements _LoadTrailsData {
  const _$LoadTrailsDataImpl();

  @override
  String toString() {
    return 'TrailsEvent.loadTrailsData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTrailsDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTrailsData,
  }) {
    return loadTrailsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTrailsData,
  }) {
    return loadTrailsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTrailsData,
    required TResult orElse(),
  }) {
    if (loadTrailsData != null) {
      return loadTrailsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTrailsData value) loadTrailsData,
  }) {
    return loadTrailsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTrailsData value)? loadTrailsData,
  }) {
    return loadTrailsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTrailsData value)? loadTrailsData,
    required TResult orElse(),
  }) {
    if (loadTrailsData != null) {
      return loadTrailsData(this);
    }
    return orElse();
  }
}

abstract class _LoadTrailsData implements TrailsEvent {
  const factory _LoadTrailsData() = _$LoadTrailsDataImpl;
}

/// @nodoc
mixin _$TrailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dataLoading,
    required TResult Function(List<Trail> trails) dataLoaded,
    required TResult Function() dataLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dataLoading,
    TResult? Function(List<Trail> trails)? dataLoaded,
    TResult? Function()? dataLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dataLoading,
    TResult Function(List<Trail> trails)? dataLoaded,
    TResult Function()? dataLoadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) dataLoading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_DataLoadError value) dataLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? dataLoading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_DataLoadError value)? dataLoadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? dataLoading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_DataLoadError value)? dataLoadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsStateCopyWith<$Res> {
  factory $TrailsStateCopyWith(
          TrailsState value, $Res Function(TrailsState) then) =
      _$TrailsStateCopyWithImpl<$Res, TrailsState>;
}

/// @nodoc
class _$TrailsStateCopyWithImpl<$Res, $Val extends TrailsState>
    implements $TrailsStateCopyWith<$Res> {
  _$TrailsStateCopyWithImpl(this._value, this._then);

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
    extends _$TrailsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TrailsState.initial()';
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
    required TResult Function() dataLoading,
    required TResult Function(List<Trail> trails) dataLoaded,
    required TResult Function() dataLoadError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dataLoading,
    TResult? Function(List<Trail> trails)? dataLoaded,
    TResult? Function()? dataLoadError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dataLoading,
    TResult Function(List<Trail> trails)? dataLoaded,
    TResult Function()? dataLoadError,
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
    required TResult Function(_DataLoading value) dataLoading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_DataLoadError value) dataLoadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? dataLoading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_DataLoadError value)? dataLoadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? dataLoading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_DataLoadError value)? dataLoadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DataLoadingImplCopyWith<$Res> {
  factory _$$DataLoadingImplCopyWith(
          _$DataLoadingImpl value, $Res Function(_$DataLoadingImpl) then) =
      __$$DataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataLoadingImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$DataLoadingImpl>
    implements _$$DataLoadingImplCopyWith<$Res> {
  __$$DataLoadingImplCopyWithImpl(
      _$DataLoadingImpl _value, $Res Function(_$DataLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataLoadingImpl implements _DataLoading {
  const _$DataLoadingImpl();

  @override
  String toString() {
    return 'TrailsState.dataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dataLoading,
    required TResult Function(List<Trail> trails) dataLoaded,
    required TResult Function() dataLoadError,
  }) {
    return dataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dataLoading,
    TResult? Function(List<Trail> trails)? dataLoaded,
    TResult? Function()? dataLoadError,
  }) {
    return dataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dataLoading,
    TResult Function(List<Trail> trails)? dataLoaded,
    TResult Function()? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoading != null) {
      return dataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) dataLoading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_DataLoadError value) dataLoadError,
  }) {
    return dataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? dataLoading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_DataLoadError value)? dataLoadError,
  }) {
    return dataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? dataLoading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_DataLoadError value)? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoading != null) {
      return dataLoading(this);
    }
    return orElse();
  }
}

abstract class _DataLoading implements TrailsState {
  const factory _DataLoading() = _$DataLoadingImpl;
}

/// @nodoc
abstract class _$$DataLoadedImplCopyWith<$Res> {
  factory _$$DataLoadedImplCopyWith(
          _$DataLoadedImpl value, $Res Function(_$DataLoadedImpl) then) =
      __$$DataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Trail> trails});
}

/// @nodoc
class __$$DataLoadedImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$DataLoadedImpl>
    implements _$$DataLoadedImplCopyWith<$Res> {
  __$$DataLoadedImplCopyWithImpl(
      _$DataLoadedImpl _value, $Res Function(_$DataLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trails = null,
  }) {
    return _then(_$DataLoadedImpl(
      null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
    ));
  }
}

/// @nodoc

class _$DataLoadedImpl implements _DataLoaded {
  const _$DataLoadedImpl(final List<Trail> trails) : _trails = trails;

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  String toString() {
    return 'TrailsState.dataLoaded(trails: $trails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoadedImpl &&
            const DeepCollectionEquality().equals(other._trails, _trails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoadedImplCopyWith<_$DataLoadedImpl> get copyWith =>
      __$$DataLoadedImplCopyWithImpl<_$DataLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dataLoading,
    required TResult Function(List<Trail> trails) dataLoaded,
    required TResult Function() dataLoadError,
  }) {
    return dataLoaded(trails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dataLoading,
    TResult? Function(List<Trail> trails)? dataLoaded,
    TResult? Function()? dataLoadError,
  }) {
    return dataLoaded?.call(trails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dataLoading,
    TResult Function(List<Trail> trails)? dataLoaded,
    TResult Function()? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(trails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) dataLoading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_DataLoadError value) dataLoadError,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? dataLoading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_DataLoadError value)? dataLoadError,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? dataLoading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_DataLoadError value)? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements TrailsState {
  const factory _DataLoaded(final List<Trail> trails) = _$DataLoadedImpl;

  List<Trail> get trails;
  @JsonKey(ignore: true)
  _$$DataLoadedImplCopyWith<_$DataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataLoadErrorImplCopyWith<$Res> {
  factory _$$DataLoadErrorImplCopyWith(
          _$DataLoadErrorImpl value, $Res Function(_$DataLoadErrorImpl) then) =
      __$$DataLoadErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataLoadErrorImplCopyWithImpl<$Res>
    extends _$TrailsStateCopyWithImpl<$Res, _$DataLoadErrorImpl>
    implements _$$DataLoadErrorImplCopyWith<$Res> {
  __$$DataLoadErrorImplCopyWithImpl(
      _$DataLoadErrorImpl _value, $Res Function(_$DataLoadErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataLoadErrorImpl implements _DataLoadError {
  const _$DataLoadErrorImpl();

  @override
  String toString() {
    return 'TrailsState.dataLoadError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataLoadErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() dataLoading,
    required TResult Function(List<Trail> trails) dataLoaded,
    required TResult Function() dataLoadError,
  }) {
    return dataLoadError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? dataLoading,
    TResult? Function(List<Trail> trails)? dataLoaded,
    TResult? Function()? dataLoadError,
  }) {
    return dataLoadError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? dataLoading,
    TResult Function(List<Trail> trails)? dataLoaded,
    TResult Function()? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoadError != null) {
      return dataLoadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) dataLoading,
    required TResult Function(_DataLoaded value) dataLoaded,
    required TResult Function(_DataLoadError value) dataLoadError,
  }) {
    return dataLoadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? dataLoading,
    TResult? Function(_DataLoaded value)? dataLoaded,
    TResult? Function(_DataLoadError value)? dataLoadError,
  }) {
    return dataLoadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? dataLoading,
    TResult Function(_DataLoaded value)? dataLoaded,
    TResult Function(_DataLoadError value)? dataLoadError,
    required TResult orElse(),
  }) {
    if (dataLoadError != null) {
      return dataLoadError(this);
    }
    return orElse();
  }
}

abstract class _DataLoadError implements TrailsState {
  const factory _DataLoadError() = _$DataLoadErrorImpl;
}
