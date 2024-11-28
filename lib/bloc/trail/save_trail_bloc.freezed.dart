// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_trail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveTrailEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) saveTrailLocally,
    required TResult Function(int id) unSaveTrailLocally,
    required TResult Function(int id) abortSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? saveTrailLocally,
    TResult? Function(int id)? unSaveTrailLocally,
    TResult? Function(int id)? abortSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTrailLocally value) saveTrailLocally,
    required TResult Function(_UnSaveTrailLocally value) unSaveTrailLocally,
    required TResult Function(_AbortSaveTrailLocally value) abortSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult? Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult? Function(_AbortSaveTrailLocally value)? abortSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveTrailEventCopyWith<SaveTrailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTrailEventCopyWith<$Res> {
  factory $SaveTrailEventCopyWith(
          SaveTrailEvent value, $Res Function(SaveTrailEvent) then) =
      _$SaveTrailEventCopyWithImpl<$Res, SaveTrailEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SaveTrailEventCopyWithImpl<$Res, $Val extends SaveTrailEvent>
    implements $SaveTrailEventCopyWith<$Res> {
  _$SaveTrailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveTrailLocallyImplCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$SaveTrailLocallyImplCopyWith(_$SaveTrailLocallyImpl value,
          $Res Function(_$SaveTrailLocallyImpl) then) =
      __$$SaveTrailLocallyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SaveTrailLocallyImplCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res, _$SaveTrailLocallyImpl>
    implements _$$SaveTrailLocallyImplCopyWith<$Res> {
  __$$SaveTrailLocallyImplCopyWithImpl(_$SaveTrailLocallyImpl _value,
      $Res Function(_$SaveTrailLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SaveTrailLocallyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveTrailLocallyImpl implements _SaveTrailLocally {
  const _$SaveTrailLocallyImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.saveTrailLocally(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTrailLocallyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTrailLocallyImplCopyWith<_$SaveTrailLocallyImpl> get copyWith =>
      __$$SaveTrailLocallyImplCopyWithImpl<_$SaveTrailLocallyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) saveTrailLocally,
    required TResult Function(int id) unSaveTrailLocally,
    required TResult Function(int id) abortSave,
  }) {
    return saveTrailLocally(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? saveTrailLocally,
    TResult? Function(int id)? unSaveTrailLocally,
    TResult? Function(int id)? abortSave,
  }) {
    return saveTrailLocally?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
    required TResult orElse(),
  }) {
    if (saveTrailLocally != null) {
      return saveTrailLocally(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTrailLocally value) saveTrailLocally,
    required TResult Function(_UnSaveTrailLocally value) unSaveTrailLocally,
    required TResult Function(_AbortSaveTrailLocally value) abortSave,
  }) {
    return saveTrailLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult? Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult? Function(_AbortSaveTrailLocally value)? abortSave,
  }) {
    return saveTrailLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
    required TResult orElse(),
  }) {
    if (saveTrailLocally != null) {
      return saveTrailLocally(this);
    }
    return orElse();
  }
}

abstract class _SaveTrailLocally implements SaveTrailEvent {
  const factory _SaveTrailLocally({required final int id}) =
      _$SaveTrailLocallyImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$SaveTrailLocallyImplCopyWith<_$SaveTrailLocallyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnSaveTrailLocallyImplCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$UnSaveTrailLocallyImplCopyWith(_$UnSaveTrailLocallyImpl value,
          $Res Function(_$UnSaveTrailLocallyImpl) then) =
      __$$UnSaveTrailLocallyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnSaveTrailLocallyImplCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res, _$UnSaveTrailLocallyImpl>
    implements _$$UnSaveTrailLocallyImplCopyWith<$Res> {
  __$$UnSaveTrailLocallyImplCopyWithImpl(_$UnSaveTrailLocallyImpl _value,
      $Res Function(_$UnSaveTrailLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnSaveTrailLocallyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnSaveTrailLocallyImpl implements _UnSaveTrailLocally {
  const _$UnSaveTrailLocallyImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.unSaveTrailLocally(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnSaveTrailLocallyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnSaveTrailLocallyImplCopyWith<_$UnSaveTrailLocallyImpl> get copyWith =>
      __$$UnSaveTrailLocallyImplCopyWithImpl<_$UnSaveTrailLocallyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) saveTrailLocally,
    required TResult Function(int id) unSaveTrailLocally,
    required TResult Function(int id) abortSave,
  }) {
    return unSaveTrailLocally(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? saveTrailLocally,
    TResult? Function(int id)? unSaveTrailLocally,
    TResult? Function(int id)? abortSave,
  }) {
    return unSaveTrailLocally?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
    required TResult orElse(),
  }) {
    if (unSaveTrailLocally != null) {
      return unSaveTrailLocally(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTrailLocally value) saveTrailLocally,
    required TResult Function(_UnSaveTrailLocally value) unSaveTrailLocally,
    required TResult Function(_AbortSaveTrailLocally value) abortSave,
  }) {
    return unSaveTrailLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult? Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult? Function(_AbortSaveTrailLocally value)? abortSave,
  }) {
    return unSaveTrailLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
    required TResult orElse(),
  }) {
    if (unSaveTrailLocally != null) {
      return unSaveTrailLocally(this);
    }
    return orElse();
  }
}

abstract class _UnSaveTrailLocally implements SaveTrailEvent {
  const factory _UnSaveTrailLocally({required final int id}) =
      _$UnSaveTrailLocallyImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$UnSaveTrailLocallyImplCopyWith<_$UnSaveTrailLocallyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbortSaveTrailLocallyImplCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$AbortSaveTrailLocallyImplCopyWith(
          _$AbortSaveTrailLocallyImpl value,
          $Res Function(_$AbortSaveTrailLocallyImpl) then) =
      __$$AbortSaveTrailLocallyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$AbortSaveTrailLocallyImplCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res, _$AbortSaveTrailLocallyImpl>
    implements _$$AbortSaveTrailLocallyImplCopyWith<$Res> {
  __$$AbortSaveTrailLocallyImplCopyWithImpl(_$AbortSaveTrailLocallyImpl _value,
      $Res Function(_$AbortSaveTrailLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AbortSaveTrailLocallyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AbortSaveTrailLocallyImpl implements _AbortSaveTrailLocally {
  const _$AbortSaveTrailLocallyImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.abortSave(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbortSaveTrailLocallyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbortSaveTrailLocallyImplCopyWith<_$AbortSaveTrailLocallyImpl>
      get copyWith => __$$AbortSaveTrailLocallyImplCopyWithImpl<
          _$AbortSaveTrailLocallyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) saveTrailLocally,
    required TResult Function(int id) unSaveTrailLocally,
    required TResult Function(int id) abortSave,
  }) {
    return abortSave(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? saveTrailLocally,
    TResult? Function(int id)? unSaveTrailLocally,
    TResult? Function(int id)? abortSave,
  }) {
    return abortSave?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
    required TResult orElse(),
  }) {
    if (abortSave != null) {
      return abortSave(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTrailLocally value) saveTrailLocally,
    required TResult Function(_UnSaveTrailLocally value) unSaveTrailLocally,
    required TResult Function(_AbortSaveTrailLocally value) abortSave,
  }) {
    return abortSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult? Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult? Function(_AbortSaveTrailLocally value)? abortSave,
  }) {
    return abortSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
    required TResult orElse(),
  }) {
    if (abortSave != null) {
      return abortSave(this);
    }
    return orElse();
  }
}

abstract class _AbortSaveTrailLocally implements SaveTrailEvent {
  const factory _AbortSaveTrailLocally({required final int id}) =
      _$AbortSaveTrailLocallyImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$AbortSaveTrailLocallyImplCopyWith<_$AbortSaveTrailLocallyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveTrailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTrailStateCopyWith<$Res> {
  factory $SaveTrailStateCopyWith(
          SaveTrailState value, $Res Function(SaveTrailState) then) =
      _$SaveTrailStateCopyWithImpl<$Res, SaveTrailState>;
}

/// @nodoc
class _$SaveTrailStateCopyWithImpl<$Res, $Val extends SaveTrailState>
    implements $SaveTrailStateCopyWith<$Res> {
  _$SaveTrailStateCopyWithImpl(this._value, this._then);

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
    extends _$SaveTrailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SaveTrailState.initial()';
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
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SaveTrailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'SaveTrailState.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements SaveTrailState {
  const factory _Start() = _$StartImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nbImageSaved, int nbImages});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nbImageSaved = null,
    Object? nbImages = null,
  }) {
    return _then(_$LoadingImpl(
      nbImageSaved: null == nbImageSaved
          ? _value.nbImageSaved
          : nbImageSaved // ignore: cast_nullable_to_non_nullable
              as int,
      nbImages: null == nbImages
          ? _value.nbImages
          : nbImages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.nbImageSaved, required this.nbImages});

  @override
  final int nbImageSaved;
  @override
  final int nbImages;

  @override
  String toString() {
    return 'SaveTrailState.loading(nbImageSaved: $nbImageSaved, nbImages: $nbImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.nbImageSaved, nbImageSaved) ||
                other.nbImageSaved == nbImageSaved) &&
            (identical(other.nbImages, nbImages) ||
                other.nbImages == nbImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nbImageSaved, nbImages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return loading(nbImageSaved, nbImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return loading?.call(nbImageSaved, nbImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(nbImageSaved, nbImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SaveTrailState {
  const factory _Loading(
      {required final int nbImageSaved,
      required final int nbImages}) = _$LoadingImpl;

  int get nbImageSaved;
  int get nbImages;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'SaveTrailState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SaveTrailState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$StartUnSaveImplCopyWith<$Res> {
  factory _$$StartUnSaveImplCopyWith(
          _$StartUnSaveImpl value, $Res Function(_$StartUnSaveImpl) then) =
      __$$StartUnSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartUnSaveImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$StartUnSaveImpl>
    implements _$$StartUnSaveImplCopyWith<$Res> {
  __$$StartUnSaveImplCopyWithImpl(
      _$StartUnSaveImpl _value, $Res Function(_$StartUnSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartUnSaveImpl implements _StartUnSave {
  const _$StartUnSaveImpl();

  @override
  String toString() {
    return 'SaveTrailState.unSaveStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartUnSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return unSaveStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return unSaveStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (unSaveStart != null) {
      return unSaveStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return unSaveStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return unSaveStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (unSaveStart != null) {
      return unSaveStart(this);
    }
    return orElse();
  }
}

abstract class _StartUnSave implements SaveTrailState {
  const factory _StartUnSave() = _$StartUnSaveImpl;
}

/// @nodoc
abstract class _$$UnSaveCompleteImplCopyWith<$Res> {
  factory _$$UnSaveCompleteImplCopyWith(_$UnSaveCompleteImpl value,
          $Res Function(_$UnSaveCompleteImpl) then) =
      __$$UnSaveCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnSaveCompleteImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$UnSaveCompleteImpl>
    implements _$$UnSaveCompleteImplCopyWith<$Res> {
  __$$UnSaveCompleteImplCopyWithImpl(
      _$UnSaveCompleteImpl _value, $Res Function(_$UnSaveCompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnSaveCompleteImpl implements _UnSaveComplete {
  const _$UnSaveCompleteImpl();

  @override
  String toString() {
    return 'SaveTrailState.unSaveComplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnSaveCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return unSaveComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return unSaveComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (unSaveComplete != null) {
      return unSaveComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return unSaveComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return unSaveComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (unSaveComplete != null) {
      return unSaveComplete(this);
    }
    return orElse();
  }
}

abstract class _UnSaveComplete implements SaveTrailState {
  const factory _UnSaveComplete() = _$UnSaveCompleteImpl;
}

/// @nodoc
abstract class _$$UnSaveErrorImplCopyWith<$Res> {
  factory _$$UnSaveErrorImplCopyWith(
          _$UnSaveErrorImpl value, $Res Function(_$UnSaveErrorImpl) then) =
      __$$UnSaveErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnSaveErrorImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$UnSaveErrorImpl>
    implements _$$UnSaveErrorImplCopyWith<$Res> {
  __$$UnSaveErrorImplCopyWithImpl(
      _$UnSaveErrorImpl _value, $Res Function(_$UnSaveErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnSaveErrorImpl implements _UnSaveError {
  const _$UnSaveErrorImpl();

  @override
  String toString() {
    return 'SaveTrailState.unSaveError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnSaveErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return unSaveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return unSaveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (unSaveError != null) {
      return unSaveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return unSaveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return unSaveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (unSaveError != null) {
      return unSaveError(this);
    }
    return orElse();
  }
}

abstract class _UnSaveError implements SaveTrailState {
  const factory _UnSaveError() = _$UnSaveErrorImpl;
}

/// @nodoc
abstract class _$$SaveErrorImplCopyWith<$Res> {
  factory _$$SaveErrorImplCopyWith(
          _$SaveErrorImpl value, $Res Function(_$SaveErrorImpl) then) =
      __$$SaveErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveErrorImplCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res, _$SaveErrorImpl>
    implements _$$SaveErrorImplCopyWith<$Res> {
  __$$SaveErrorImplCopyWithImpl(
      _$SaveErrorImpl _value, $Res Function(_$SaveErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveErrorImpl implements _SaveError {
  const _$SaveErrorImpl();

  @override
  String toString() {
    return 'SaveTrailState.saveError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start,
    required TResult Function(int nbImageSaved, int nbImages) loading,
    required TResult Function() loaded,
    required TResult Function() unSaveStart,
    required TResult Function() unSaveComplete,
    required TResult Function() unSaveError,
    required TResult Function() saveError,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start,
    TResult? Function(int nbImageSaved, int nbImages)? loading,
    TResult? Function()? loaded,
    TResult? Function()? unSaveStart,
    TResult? Function()? unSaveComplete,
    TResult? Function()? unSaveError,
    TResult? Function()? saveError,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start value) start,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_StartUnSave value) unSaveStart,
    required TResult Function(_UnSaveComplete value) unSaveComplete,
    required TResult Function(_UnSaveError value) unSaveError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start value)? start,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_StartUnSave value)? unSaveStart,
    TResult? Function(_UnSaveComplete value)? unSaveComplete,
    TResult? Function(_UnSaveError value)? unSaveError,
    TResult? Function(_SaveError value)? saveError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class _SaveError implements SaveTrailState {
  const factory _SaveError() = _$SaveErrorImpl;
}
