// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_trail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
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
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
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
      _$SaveTrailEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SaveTrailEventCopyWithImpl<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  _$SaveTrailEventCopyWithImpl(this._value, this._then);

  final SaveTrailEvent _value;
  // ignore: unused_field
  final $Res Function(SaveTrailEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SaveTrailLocallyCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$_SaveTrailLocallyCopyWith(
          _$_SaveTrailLocally value, $Res Function(_$_SaveTrailLocally) then) =
      __$$_SaveTrailLocallyCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$_SaveTrailLocallyCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res>
    implements _$$_SaveTrailLocallyCopyWith<$Res> {
  __$$_SaveTrailLocallyCopyWithImpl(
      _$_SaveTrailLocally _value, $Res Function(_$_SaveTrailLocally) _then)
      : super(_value, (v) => _then(v as _$_SaveTrailLocally));

  @override
  _$_SaveTrailLocally get _value => super._value as _$_SaveTrailLocally;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SaveTrailLocally(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SaveTrailLocally implements _SaveTrailLocally {
  const _$_SaveTrailLocally({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.saveTrailLocally(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTrailLocally &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SaveTrailLocallyCopyWith<_$_SaveTrailLocally> get copyWith =>
      __$$_SaveTrailLocallyCopyWithImpl<_$_SaveTrailLocally>(this, _$identity);

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
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
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
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
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
      _$_SaveTrailLocally;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_SaveTrailLocallyCopyWith<_$_SaveTrailLocally> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnSaveTrailLocallyCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$_UnSaveTrailLocallyCopyWith(_$_UnSaveTrailLocally value,
          $Res Function(_$_UnSaveTrailLocally) then) =
      __$$_UnSaveTrailLocallyCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$_UnSaveTrailLocallyCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res>
    implements _$$_UnSaveTrailLocallyCopyWith<$Res> {
  __$$_UnSaveTrailLocallyCopyWithImpl(
      _$_UnSaveTrailLocally _value, $Res Function(_$_UnSaveTrailLocally) _then)
      : super(_value, (v) => _then(v as _$_UnSaveTrailLocally));

  @override
  _$_UnSaveTrailLocally get _value => super._value as _$_UnSaveTrailLocally;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_UnSaveTrailLocally(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UnSaveTrailLocally implements _UnSaveTrailLocally {
  const _$_UnSaveTrailLocally({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.unSaveTrailLocally(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnSaveTrailLocally &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_UnSaveTrailLocallyCopyWith<_$_UnSaveTrailLocally> get copyWith =>
      __$$_UnSaveTrailLocallyCopyWithImpl<_$_UnSaveTrailLocally>(
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
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
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
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
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
      _$_UnSaveTrailLocally;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_UnSaveTrailLocallyCopyWith<_$_UnSaveTrailLocally> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AbortSaveTrailLocallyCopyWith<$Res>
    implements $SaveTrailEventCopyWith<$Res> {
  factory _$$_AbortSaveTrailLocallyCopyWith(_$_AbortSaveTrailLocally value,
          $Res Function(_$_AbortSaveTrailLocally) then) =
      __$$_AbortSaveTrailLocallyCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$_AbortSaveTrailLocallyCopyWithImpl<$Res>
    extends _$SaveTrailEventCopyWithImpl<$Res>
    implements _$$_AbortSaveTrailLocallyCopyWith<$Res> {
  __$$_AbortSaveTrailLocallyCopyWithImpl(_$_AbortSaveTrailLocally _value,
      $Res Function(_$_AbortSaveTrailLocally) _then)
      : super(_value, (v) => _then(v as _$_AbortSaveTrailLocally));

  @override
  _$_AbortSaveTrailLocally get _value =>
      super._value as _$_AbortSaveTrailLocally;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_AbortSaveTrailLocally(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AbortSaveTrailLocally implements _AbortSaveTrailLocally {
  const _$_AbortSaveTrailLocally({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SaveTrailEvent.abortSave(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbortSaveTrailLocally &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_AbortSaveTrailLocallyCopyWith<_$_AbortSaveTrailLocally> get copyWith =>
      __$$_AbortSaveTrailLocallyCopyWithImpl<_$_AbortSaveTrailLocally>(
          this, _$identity);

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
    TResult Function(int id)? saveTrailLocally,
    TResult Function(int id)? unSaveTrailLocally,
    TResult Function(int id)? abortSave,
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
    TResult Function(_SaveTrailLocally value)? saveTrailLocally,
    TResult Function(_UnSaveTrailLocally value)? unSaveTrailLocally,
    TResult Function(_AbortSaveTrailLocally value)? abortSave,
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
      _$_AbortSaveTrailLocally;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_AbortSaveTrailLocallyCopyWith<_$_AbortSaveTrailLocally> get copyWith =>
      throw _privateConstructorUsedError;
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
      _$SaveTrailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveTrailStateCopyWithImpl<$Res>
    implements $SaveTrailStateCopyWith<$Res> {
  _$SaveTrailStateCopyWithImpl(this._value, this._then);

  final SaveTrailState _value;
  // ignore: unused_field
  final $Res Function(SaveTrailState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SaveTrailState.initial()';
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res> extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, (v) => _then(v as _$_Start));

  @override
  _$_Start get _value => super._value as _$_Start;
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'SaveTrailState.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  $Res call({int nbImageSaved, int nbImages});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? nbImageSaved = freezed,
    Object? nbImages = freezed,
  }) {
    return _then(_$_Loading(
      nbImageSaved: nbImageSaved == freezed
          ? _value.nbImageSaved
          : nbImageSaved // ignore: cast_nullable_to_non_nullable
              as int,
      nbImages: nbImages == freezed
          ? _value.nbImages
          : nbImages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.nbImageSaved, required this.nbImages});

  @override
  final int nbImageSaved;
  @override
  final int nbImages;

  @override
  String toString() {
    return 'SaveTrailState.loading(nbImageSaved: $nbImageSaved, nbImages: $nbImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other.nbImageSaved, nbImageSaved) &&
            const DeepCollectionEquality().equals(other.nbImages, nbImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nbImageSaved),
      const DeepCollectionEquality().hash(nbImages));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
      required final int nbImages}) = _$_Loading;

  int get nbImageSaved;
  int get nbImages;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'SaveTrailState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$$_StartUnSaveCopyWith<$Res> {
  factory _$$_StartUnSaveCopyWith(
          _$_StartUnSave value, $Res Function(_$_StartUnSave) then) =
      __$$_StartUnSaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartUnSaveCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_StartUnSaveCopyWith<$Res> {
  __$$_StartUnSaveCopyWithImpl(
      _$_StartUnSave _value, $Res Function(_$_StartUnSave) _then)
      : super(_value, (v) => _then(v as _$_StartUnSave));

  @override
  _$_StartUnSave get _value => super._value as _$_StartUnSave;
}

/// @nodoc

class _$_StartUnSave implements _StartUnSave {
  const _$_StartUnSave();

  @override
  String toString() {
    return 'SaveTrailState.unSaveStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartUnSave);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _StartUnSave() = _$_StartUnSave;
}

/// @nodoc
abstract class _$$_UnSaveCompleteCopyWith<$Res> {
  factory _$$_UnSaveCompleteCopyWith(
          _$_UnSaveComplete value, $Res Function(_$_UnSaveComplete) then) =
      __$$_UnSaveCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnSaveCompleteCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_UnSaveCompleteCopyWith<$Res> {
  __$$_UnSaveCompleteCopyWithImpl(
      _$_UnSaveComplete _value, $Res Function(_$_UnSaveComplete) _then)
      : super(_value, (v) => _then(v as _$_UnSaveComplete));

  @override
  _$_UnSaveComplete get _value => super._value as _$_UnSaveComplete;
}

/// @nodoc

class _$_UnSaveComplete implements _UnSaveComplete {
  const _$_UnSaveComplete();

  @override
  String toString() {
    return 'SaveTrailState.unSaveComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnSaveComplete);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _UnSaveComplete() = _$_UnSaveComplete;
}

/// @nodoc
abstract class _$$_UnSaveErrorCopyWith<$Res> {
  factory _$$_UnSaveErrorCopyWith(
          _$_UnSaveError value, $Res Function(_$_UnSaveError) then) =
      __$$_UnSaveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnSaveErrorCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_UnSaveErrorCopyWith<$Res> {
  __$$_UnSaveErrorCopyWithImpl(
      _$_UnSaveError _value, $Res Function(_$_UnSaveError) _then)
      : super(_value, (v) => _then(v as _$_UnSaveError));

  @override
  _$_UnSaveError get _value => super._value as _$_UnSaveError;
}

/// @nodoc

class _$_UnSaveError implements _UnSaveError {
  const _$_UnSaveError();

  @override
  String toString() {
    return 'SaveTrailState.unSaveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnSaveError);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _UnSaveError() = _$_UnSaveError;
}

/// @nodoc
abstract class _$$_SaveErrorCopyWith<$Res> {
  factory _$$_SaveErrorCopyWith(
          _$_SaveError value, $Res Function(_$_SaveError) then) =
      __$$_SaveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveErrorCopyWithImpl<$Res>
    extends _$SaveTrailStateCopyWithImpl<$Res>
    implements _$$_SaveErrorCopyWith<$Res> {
  __$$_SaveErrorCopyWithImpl(
      _$_SaveError _value, $Res Function(_$_SaveError) _then)
      : super(_value, (v) => _then(v as _$_SaveError));

  @override
  _$_SaveError get _value => super._value as _$_SaveError;
}

/// @nodoc

class _$_SaveError implements _SaveError {
  const _$_SaveError();

  @override
  String toString() {
    return 'SaveTrailState.saveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveError);
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
    TResult Function()? initial,
    TResult Function()? start,
    TResult Function(int nbImageSaved, int nbImages)? loading,
    TResult Function()? loaded,
    TResult Function()? unSaveStart,
    TResult Function()? unSaveComplete,
    TResult Function()? unSaveError,
    TResult Function()? saveError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Start value)? start,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_StartUnSave value)? unSaveStart,
    TResult Function(_UnSaveComplete value)? unSaveComplete,
    TResult Function(_UnSaveError value)? unSaveError,
    TResult Function(_SaveError value)? saveError,
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
  const factory _SaveError() = _$_SaveError;
}
