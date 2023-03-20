// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mytrails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyTrailsEvent {
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
abstract class $MyTrailsEventCopyWith<$Res> {
  factory $MyTrailsEventCopyWith(
          MyTrailsEvent value, $Res Function(MyTrailsEvent) then) =
      _$MyTrailsEventCopyWithImpl<$Res, MyTrailsEvent>;
}

/// @nodoc
class _$MyTrailsEventCopyWithImpl<$Res, $Val extends MyTrailsEvent>
    implements $MyTrailsEventCopyWith<$Res> {
  _$MyTrailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadTrailsDataCopyWith<$Res> {
  factory _$$_LoadTrailsDataCopyWith(
          _$_LoadTrailsData value, $Res Function(_$_LoadTrailsData) then) =
      __$$_LoadTrailsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadTrailsDataCopyWithImpl<$Res>
    extends _$MyTrailsEventCopyWithImpl<$Res, _$_LoadTrailsData>
    implements _$$_LoadTrailsDataCopyWith<$Res> {
  __$$_LoadTrailsDataCopyWithImpl(
      _$_LoadTrailsData _value, $Res Function(_$_LoadTrailsData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadTrailsData implements _LoadTrailsData {
  const _$_LoadTrailsData();

  @override
  String toString() {
    return 'MyTrailsEvent.loadTrailsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadTrailsData);
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

abstract class _LoadTrailsData implements MyTrailsEvent {
  const factory _LoadTrailsData() = _$_LoadTrailsData;
}

/// @nodoc
mixin _$MyTrailsState {
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
abstract class $MyTrailsStateCopyWith<$Res> {
  factory $MyTrailsStateCopyWith(
          MyTrailsState value, $Res Function(MyTrailsState) then) =
      _$MyTrailsStateCopyWithImpl<$Res, MyTrailsState>;
}

/// @nodoc
class _$MyTrailsStateCopyWithImpl<$Res, $Val extends MyTrailsState>
    implements $MyTrailsStateCopyWith<$Res> {
  _$MyTrailsStateCopyWithImpl(this._value, this._then);

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
    extends _$MyTrailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MyTrailsState.initial()';
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

abstract class _Initial implements MyTrailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataLoadingCopyWith<$Res> {
  factory _$$_DataLoadingCopyWith(
          _$_DataLoading value, $Res Function(_$_DataLoading) then) =
      __$$_DataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataLoadingCopyWithImpl<$Res>
    extends _$MyTrailsStateCopyWithImpl<$Res, _$_DataLoading>
    implements _$$_DataLoadingCopyWith<$Res> {
  __$$_DataLoadingCopyWithImpl(
      _$_DataLoading _value, $Res Function(_$_DataLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataLoading implements _DataLoading {
  const _$_DataLoading();

  @override
  String toString() {
    return 'MyTrailsState.dataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataLoading);
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

abstract class _DataLoading implements MyTrailsState {
  const factory _DataLoading() = _$_DataLoading;
}

/// @nodoc
abstract class _$$_DataLoadedCopyWith<$Res> {
  factory _$$_DataLoadedCopyWith(
          _$_DataLoaded value, $Res Function(_$_DataLoaded) then) =
      __$$_DataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Trail> trails});
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$MyTrailsStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trails = null,
  }) {
    return _then(_$_DataLoaded(
      null == trails
          ? _value._trails
          : trails // ignore: cast_nullable_to_non_nullable
              as List<Trail>,
    ));
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded(final List<Trail> trails) : _trails = trails;

  final List<Trail> _trails;
  @override
  List<Trail> get trails {
    if (_trails is EqualUnmodifiableListView) return _trails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trails);
  }

  @override
  String toString() {
    return 'MyTrailsState.dataLoaded(trails: $trails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            const DeepCollectionEquality().equals(other._trails, _trails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

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

abstract class _DataLoaded implements MyTrailsState {
  const factory _DataLoaded(final List<Trail> trails) = _$_DataLoaded;

  List<Trail> get trails;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataLoadErrorCopyWith<$Res> {
  factory _$$_DataLoadErrorCopyWith(
          _$_DataLoadError value, $Res Function(_$_DataLoadError) then) =
      __$$_DataLoadErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataLoadErrorCopyWithImpl<$Res>
    extends _$MyTrailsStateCopyWithImpl<$Res, _$_DataLoadError>
    implements _$$_DataLoadErrorCopyWith<$Res> {
  __$$_DataLoadErrorCopyWithImpl(
      _$_DataLoadError _value, $Res Function(_$_DataLoadError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataLoadError implements _DataLoadError {
  const _$_DataLoadError();

  @override
  String toString() {
    return 'MyTrailsState.dataLoadError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataLoadError);
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

abstract class _DataLoadError implements MyTrailsState {
  const factory _DataLoadError() = _$_DataLoadError;
}
