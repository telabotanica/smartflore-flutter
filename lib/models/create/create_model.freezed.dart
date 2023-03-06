// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTrail _$CreateTrailFromJson(Map<String, dynamic> json) {
  return _CreateTrail.fromJson(json);
}

/// @nodoc
mixin _$CreateTrail {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  SavePosition get position => throw _privateConstructorUsedError;
  @HiveField(2)
  List<SaveOccurrence> get occurrences => throw _privateConstructorUsedError;
  @HiveField(3)
  Path get path => throw _privateConstructorUsedError;
  @HiveField(5)
  int get prm => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_season')
  @HiveField(6)
  List<bool> get bestSeason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTrailCopyWith<CreateTrail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTrailCopyWith<$Res> {
  factory $CreateTrailCopyWith(
          CreateTrail value, $Res Function(CreateTrail) then) =
      _$CreateTrailCopyWithImpl<$Res, CreateTrail>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) SavePosition position,
      @HiveField(2) List<SaveOccurrence> occurrences,
      @HiveField(3) Path path,
      @HiveField(5) int prm,
      @JsonKey(name: 'best_season') @HiveField(6) List<bool> bestSeason});

  $SavePositionCopyWith<$Res> get position;
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class _$CreateTrailCopyWithImpl<$Res, $Val extends CreateTrail>
    implements $CreateTrailCopyWith<$Res> {
  _$CreateTrailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? position = null,
    Object? occurrences = null,
    Object? path = null,
    Object? prm = null,
    Object? bestSeason = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SavePosition,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<SaveOccurrence>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      prm: null == prm
          ? _value.prm
          : prm // ignore: cast_nullable_to_non_nullable
              as int,
      bestSeason: null == bestSeason
          ? _value.bestSeason
          : bestSeason // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavePositionCopyWith<$Res> get position {
    return $SavePositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PathCopyWith<$Res> get path {
    return $PathCopyWith<$Res>(_value.path, (value) {
      return _then(_value.copyWith(path: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateTrailCopyWith<$Res>
    implements $CreateTrailCopyWith<$Res> {
  factory _$$_CreateTrailCopyWith(
          _$_CreateTrail value, $Res Function(_$_CreateTrail) then) =
      __$$_CreateTrailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) SavePosition position,
      @HiveField(2) List<SaveOccurrence> occurrences,
      @HiveField(3) Path path,
      @HiveField(5) int prm,
      @JsonKey(name: 'best_season') @HiveField(6) List<bool> bestSeason});

  @override
  $SavePositionCopyWith<$Res> get position;
  @override
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class __$$_CreateTrailCopyWithImpl<$Res>
    extends _$CreateTrailCopyWithImpl<$Res, _$_CreateTrail>
    implements _$$_CreateTrailCopyWith<$Res> {
  __$$_CreateTrailCopyWithImpl(
      _$_CreateTrail _value, $Res Function(_$_CreateTrail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? position = null,
    Object? occurrences = null,
    Object? path = null,
    Object? prm = null,
    Object? bestSeason = null,
  }) {
    return _then(_$_CreateTrail(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SavePosition,
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<SaveOccurrence>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      prm: null == prm
          ? _value.prm
          : prm // ignore: cast_nullable_to_non_nullable
              as int,
      bestSeason: null == bestSeason
          ? _value._bestSeason
          : bestSeason // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 50, adapterName: 'CreateTrailAdapter')
class _$_CreateTrail implements _CreateTrail {
  const _$_CreateTrail(
      {@HiveField(0)
          required this.name,
      @HiveField(1)
          required this.position,
      @HiveField(2)
          final List<SaveOccurrence> occurrences = const [],
      @HiveField(3)
          this.path = const Path(),
      @HiveField(5)
          this.prm = -1,
      @JsonKey(name: 'best_season')
      @HiveField(6)
          final List<bool> bestSeason = const [false, false, false, false]})
      : _occurrences = occurrences,
        _bestSeason = bestSeason;

  factory _$_CreateTrail.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTrailFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final SavePosition position;
  final List<SaveOccurrence> _occurrences;
  @override
  @JsonKey()
  @HiveField(2)
  List<SaveOccurrence> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  @JsonKey()
  @HiveField(3)
  final Path path;
  @override
  @JsonKey()
  @HiveField(5)
  final int prm;
  final List<bool> _bestSeason;
  @override
  @JsonKey(name: 'best_season')
  @HiveField(6)
  List<bool> get bestSeason {
    if (_bestSeason is EqualUnmodifiableListView) return _bestSeason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSeason);
  }

  @override
  String toString() {
    return 'CreateTrail(name: $name, position: $position, occurrences: $occurrences, path: $path, prm: $prm, bestSeason: $bestSeason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTrail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.prm, prm) || other.prm == prm) &&
            const DeepCollectionEquality()
                .equals(other._bestSeason, _bestSeason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      position,
      const DeepCollectionEquality().hash(_occurrences),
      path,
      prm,
      const DeepCollectionEquality().hash(_bestSeason));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTrailCopyWith<_$_CreateTrail> get copyWith =>
      __$$_CreateTrailCopyWithImpl<_$_CreateTrail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTrailToJson(
      this,
    );
  }
}

abstract class _CreateTrail implements CreateTrail {
  const factory _CreateTrail(
      {@HiveField(0)
          required final String name,
      @HiveField(1)
          required final SavePosition position,
      @HiveField(2)
          final List<SaveOccurrence> occurrences,
      @HiveField(3)
          final Path path,
      @HiveField(5)
          final int prm,
      @JsonKey(name: 'best_season')
      @HiveField(6)
          final List<bool> bestSeason}) = _$_CreateTrail;

  factory _CreateTrail.fromJson(Map<String, dynamic> json) =
      _$_CreateTrail.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  SavePosition get position;
  @override
  @HiveField(2)
  List<SaveOccurrence> get occurrences;
  @override
  @HiveField(3)
  Path get path;
  @override
  @HiveField(5)
  int get prm;
  @override
  @JsonKey(name: 'best_season')
  @HiveField(6)
  List<bool> get bestSeason;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTrailCopyWith<_$_CreateTrail> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveOccurrence _$SaveOccurrenceFromJson(Map<String, dynamic> json) {
  return _SaveOccurrence.fromJson(json);
}

/// @nodoc
mixin _$SaveOccurrence {
  @LatLngConverter()
  @HiveField(0)
  LatLng get position => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'taxon_id')
  int get taxonId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'repo_id')
  String get repoId => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'image_id')
  String get imageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveOccurrenceCopyWith<SaveOccurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveOccurrenceCopyWith<$Res> {
  factory $SaveOccurrenceCopyWith(
          SaveOccurrence value, $Res Function(SaveOccurrence) then) =
      _$SaveOccurrenceCopyWithImpl<$Res, SaveOccurrence>;
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) @JsonKey(name: 'taxon_id') int taxonId,
      @HiveField(2) @JsonKey(name: 'repo_id') String repoId,
      @HiveField(3) @JsonKey(name: 'image_id') String imageId});
}

/// @nodoc
class _$SaveOccurrenceCopyWithImpl<$Res, $Val extends SaveOccurrence>
    implements $SaveOccurrenceCopyWith<$Res> {
  _$SaveOccurrenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? taxonId = null,
    Object? repoId = null,
    Object? imageId = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxonId: null == taxonId
          ? _value.taxonId
          : taxonId // ignore: cast_nullable_to_non_nullable
              as int,
      repoId: null == repoId
          ? _value.repoId
          : repoId // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveOccurrenceCopyWith<$Res>
    implements $SaveOccurrenceCopyWith<$Res> {
  factory _$$_SaveOccurrenceCopyWith(
          _$_SaveOccurrence value, $Res Function(_$_SaveOccurrence) then) =
      __$$_SaveOccurrenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) @JsonKey(name: 'taxon_id') int taxonId,
      @HiveField(2) @JsonKey(name: 'repo_id') String repoId,
      @HiveField(3) @JsonKey(name: 'image_id') String imageId});
}

/// @nodoc
class __$$_SaveOccurrenceCopyWithImpl<$Res>
    extends _$SaveOccurrenceCopyWithImpl<$Res, _$_SaveOccurrence>
    implements _$$_SaveOccurrenceCopyWith<$Res> {
  __$$_SaveOccurrenceCopyWithImpl(
      _$_SaveOccurrence _value, $Res Function(_$_SaveOccurrence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? taxonId = null,
    Object? repoId = null,
    Object? imageId = null,
  }) {
    return _then(_$_SaveOccurrence(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxonId: null == taxonId
          ? _value.taxonId
          : taxonId // ignore: cast_nullable_to_non_nullable
              as int,
      repoId: null == repoId
          ? _value.repoId
          : repoId // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 51, adapterName: 'SaveOccurrenceAdapter')
class _$_SaveOccurrence implements _SaveOccurrence {
  const _$_SaveOccurrence(
      {@LatLngConverter() @HiveField(0) required this.position,
      @HiveField(1) @JsonKey(name: 'taxon_id') this.taxonId = 0,
      @HiveField(2) @JsonKey(name: 'repo_id') this.repoId = '',
      @HiveField(3) @JsonKey(name: 'image_id') this.imageId = ''});

  factory _$_SaveOccurrence.fromJson(Map<String, dynamic> json) =>
      _$$_SaveOccurrenceFromJson(json);

  @override
  @LatLngConverter()
  @HiveField(0)
  final LatLng position;
  @override
  @HiveField(1)
  @JsonKey(name: 'taxon_id')
  final int taxonId;
  @override
  @HiveField(2)
  @JsonKey(name: 'repo_id')
  final String repoId;
  @override
  @HiveField(3)
  @JsonKey(name: 'image_id')
  final String imageId;

  @override
  String toString() {
    return 'SaveOccurrence(position: $position, taxonId: $taxonId, repoId: $repoId, imageId: $imageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveOccurrence &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.taxonId, taxonId) || other.taxonId == taxonId) &&
            (identical(other.repoId, repoId) || other.repoId == repoId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, taxonId, repoId, imageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveOccurrenceCopyWith<_$_SaveOccurrence> get copyWith =>
      __$$_SaveOccurrenceCopyWithImpl<_$_SaveOccurrence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveOccurrenceToJson(
      this,
    );
  }
}

abstract class _SaveOccurrence implements SaveOccurrence {
  const factory _SaveOccurrence(
          {@LatLngConverter() @HiveField(0) required final LatLng position,
          @HiveField(1) @JsonKey(name: 'taxon_id') final int taxonId,
          @HiveField(2) @JsonKey(name: 'repo_id') final String repoId,
          @HiveField(3) @JsonKey(name: 'image_id') final String imageId}) =
      _$_SaveOccurrence;

  factory _SaveOccurrence.fromJson(Map<String, dynamic> json) =
      _$_SaveOccurrence.fromJson;

  @override
  @LatLngConverter()
  @HiveField(0)
  LatLng get position;
  @override
  @HiveField(1)
  @JsonKey(name: 'taxon_id')
  int get taxonId;
  @override
  @HiveField(2)
  @JsonKey(name: 'repo_id')
  String get repoId;
  @override
  @HiveField(3)
  @JsonKey(name: 'image_id')
  String get imageId;
  @override
  @JsonKey(ignore: true)
  _$$_SaveOccurrenceCopyWith<_$_SaveOccurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

SavePosition _$SavePositionFromJson(Map<String, dynamic> json) {
  return _SavePosition.fromJson(json);
}

/// @nodoc
mixin _$SavePosition {
  @LatLngConverter()
  @HiveField(0)
  LatLng get start => throw _privateConstructorUsedError;
  @LatLngConverter()
  @HiveField(1)
  LatLng get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePositionCopyWith<SavePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePositionCopyWith<$Res> {
  factory $SavePositionCopyWith(
          SavePosition value, $Res Function(SavePosition) then) =
      _$SavePositionCopyWithImpl<$Res, SavePosition>;
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class _$SavePositionCopyWithImpl<$Res, $Val extends SavePosition>
    implements $SavePositionCopyWith<$Res> {
  _$SavePositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as LatLng,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavePositionCopyWith<$Res>
    implements $SavePositionCopyWith<$Res> {
  factory _$$_SavePositionCopyWith(
          _$_SavePosition value, $Res Function(_$_SavePosition) then) =
      __$$_SavePositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class __$$_SavePositionCopyWithImpl<$Res>
    extends _$SavePositionCopyWithImpl<$Res, _$_SavePosition>
    implements _$$_SavePositionCopyWith<$Res> {
  __$$_SavePositionCopyWithImpl(
      _$_SavePosition _value, $Res Function(_$_SavePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_SavePosition(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as LatLng,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 55, adapterName: 'SavePositionAdapter')
class _$_SavePosition implements _SavePosition {
  const _$_SavePosition(
      {@LatLngConverter() @HiveField(0) required this.start,
      @LatLngConverter() @HiveField(1) required this.end});

  factory _$_SavePosition.fromJson(Map<String, dynamic> json) =>
      _$$_SavePositionFromJson(json);

  @override
  @LatLngConverter()
  @HiveField(0)
  final LatLng start;
  @override
  @LatLngConverter()
  @HiveField(1)
  final LatLng end;

  @override
  String toString() {
    return 'SavePosition(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePosition &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePositionCopyWith<_$_SavePosition> get copyWith =>
      __$$_SavePositionCopyWithImpl<_$_SavePosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavePositionToJson(
      this,
    );
  }
}

abstract class _SavePosition implements SavePosition {
  const factory _SavePosition(
          {@LatLngConverter() @HiveField(0) required final LatLng start,
          @LatLngConverter() @HiveField(1) required final LatLng end}) =
      _$_SavePosition;

  factory _SavePosition.fromJson(Map<String, dynamic> json) =
      _$_SavePosition.fromJson;

  @override
  @LatLngConverter()
  @HiveField(0)
  LatLng get start;
  @override
  @LatLngConverter()
  @HiveField(1)
  LatLng get end;
  @override
  @JsonKey(ignore: true)
  _$$_SavePositionCopyWith<_$_SavePosition> get copyWith =>
      throw _privateConstructorUsedError;
}
