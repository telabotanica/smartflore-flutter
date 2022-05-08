// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trails_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trails _$TrailsFromJson(Map<String, dynamic> json) {
  return _Trails.fromJson(json);
}

/// @nodoc
mixin _$Trails {
  int get took => throw _privateConstructorUsedError;
  @JsonKey(name: 'timed_out')
  bool get timedOut => throw _privateConstructorUsedError;
  List<Referential> get referentials => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailsCopyWith<Trails> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsCopyWith<$Res> {
  factory $TrailsCopyWith(Trails value, $Res Function(Trails) then) =
      _$TrailsCopyWithImpl<$Res>;
  $Res call(
      {int took,
      @JsonKey(name: 'timed_out') bool timedOut,
      List<Referential> referentials});
}

/// @nodoc
class _$TrailsCopyWithImpl<$Res> implements $TrailsCopyWith<$Res> {
  _$TrailsCopyWithImpl(this._value, this._then);

  final Trails _value;
  // ignore: unused_field
  final $Res Function(Trails) _then;

  @override
  $Res call({
    Object? took = freezed,
    Object? timedOut = freezed,
    Object? referentials = freezed,
  }) {
    return _then(_value.copyWith(
      took: took == freezed
          ? _value.took
          : took // ignore: cast_nullable_to_non_nullable
              as int,
      timedOut: timedOut == freezed
          ? _value.timedOut
          : timedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      referentials: referentials == freezed
          ? _value.referentials
          : referentials // ignore: cast_nullable_to_non_nullable
              as List<Referential>,
    ));
  }
}

/// @nodoc
abstract class _$TrailsCopyWith<$Res> implements $TrailsCopyWith<$Res> {
  factory _$TrailsCopyWith(_Trails value, $Res Function(_Trails) then) =
      __$TrailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int took,
      @JsonKey(name: 'timed_out') bool timedOut,
      List<Referential> referentials});
}

/// @nodoc
class __$TrailsCopyWithImpl<$Res> extends _$TrailsCopyWithImpl<$Res>
    implements _$TrailsCopyWith<$Res> {
  __$TrailsCopyWithImpl(_Trails _value, $Res Function(_Trails) _then)
      : super(_value, (v) => _then(v as _Trails));

  @override
  _Trails get _value => super._value as _Trails;

  @override
  $Res call({
    Object? took = freezed,
    Object? timedOut = freezed,
    Object? referentials = freezed,
  }) {
    return _then(_Trails(
      took: took == freezed
          ? _value.took
          : took // ignore: cast_nullable_to_non_nullable
              as int,
      timedOut: timedOut == freezed
          ? _value.timedOut
          : timedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      referentials: referentials == freezed
          ? _value.referentials
          : referentials // ignore: cast_nullable_to_non_nullable
              as List<Referential>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trails implements _Trails {
  const _$_Trails(
      {required this.took,
      @JsonKey(name: 'timed_out') required this.timedOut,
      required final List<Referential> referentials})
      : _referentials = referentials;

  factory _$_Trails.fromJson(Map<String, dynamic> json) =>
      _$$_TrailsFromJson(json);

  @override
  final int took;
  @override
  @JsonKey(name: 'timed_out')
  final bool timedOut;
  final List<Referential> _referentials;
  @override
  List<Referential> get referentials {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referentials);
  }

  @override
  String toString() {
    return 'Trails(took: $took, timedOut: $timedOut, referentials: $referentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trails &&
            const DeepCollectionEquality().equals(other.took, took) &&
            const DeepCollectionEquality().equals(other.timedOut, timedOut) &&
            const DeepCollectionEquality()
                .equals(other.referentials, referentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(took),
      const DeepCollectionEquality().hash(timedOut),
      const DeepCollectionEquality().hash(referentials));

  @JsonKey(ignore: true)
  @override
  _$TrailsCopyWith<_Trails> get copyWith =>
      __$TrailsCopyWithImpl<_Trails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailsToJson(this);
  }
}

abstract class _Trails implements Trails {
  const factory _Trails(
      {required final int took,
      @JsonKey(name: 'timed_out') required final bool timedOut,
      required final List<Referential> referentials}) = _$_Trails;

  factory _Trails.fromJson(Map<String, dynamic> json) = _$_Trails.fromJson;

  @override
  int get took => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'timed_out')
  bool get timedOut => throw _privateConstructorUsedError;
  @override
  List<Referential> get referentials => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailsCopyWith<_Trails> get copyWith => throw _privateConstructorUsedError;
}

Referential _$ReferentialFromJson(Map<String, dynamic> json) {
  return _Referential.fromJson(json);
}

/// @nodoc
mixin _$Referential {
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc_count')
  int get docCount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Trail get trail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferentialCopyWith<Referential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferentialCopyWith<$Res> {
  factory $ReferentialCopyWith(
          Referential value, $Res Function(Referential) then) =
      _$ReferentialCopyWithImpl<$Res>;
  $Res call(
      {String key,
      @JsonKey(name: 'doc_count') int docCount,
      String name,
      Trail trail});

  $TrailCopyWith<$Res> get trail;
}

/// @nodoc
class _$ReferentialCopyWithImpl<$Res> implements $ReferentialCopyWith<$Res> {
  _$ReferentialCopyWithImpl(this._value, this._then);

  final Referential _value;
  // ignore: unused_field
  final $Res Function(Referential) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? docCount = freezed,
    Object? name = freezed,
    Object? trail = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      docCount: docCount == freezed
          ? _value.docCount
          : docCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as Trail,
    ));
  }

  @override
  $TrailCopyWith<$Res> get trail {
    return $TrailCopyWith<$Res>(_value.trail, (value) {
      return _then(_value.copyWith(trail: value));
    });
  }
}

/// @nodoc
abstract class _$ReferentialCopyWith<$Res>
    implements $ReferentialCopyWith<$Res> {
  factory _$ReferentialCopyWith(
          _Referential value, $Res Function(_Referential) then) =
      __$ReferentialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      @JsonKey(name: 'doc_count') int docCount,
      String name,
      Trail trail});

  @override
  $TrailCopyWith<$Res> get trail;
}

/// @nodoc
class __$ReferentialCopyWithImpl<$Res> extends _$ReferentialCopyWithImpl<$Res>
    implements _$ReferentialCopyWith<$Res> {
  __$ReferentialCopyWithImpl(
      _Referential _value, $Res Function(_Referential) _then)
      : super(_value, (v) => _then(v as _Referential));

  @override
  _Referential get _value => super._value as _Referential;

  @override
  $Res call({
    Object? key = freezed,
    Object? docCount = freezed,
    Object? name = freezed,
    Object? trail = freezed,
  }) {
    return _then(_Referential(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      docCount: docCount == freezed
          ? _value.docCount
          : docCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as Trail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Referential implements _Referential {
  const _$_Referential(
      {required this.key,
      @JsonKey(name: 'doc_count') required this.docCount,
      required this.name,
      required this.trail});

  factory _$_Referential.fromJson(Map<String, dynamic> json) =>
      _$$_ReferentialFromJson(json);

  @override
  final String key;
  @override
  @JsonKey(name: 'doc_count')
  final int docCount;
  @override
  final String name;
  @override
  final Trail trail;

  @override
  String toString() {
    return 'Referential(key: $key, docCount: $docCount, name: $name, trail: $trail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Referential &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.docCount, docCount) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.trail, trail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(docCount),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(trail));

  @JsonKey(ignore: true)
  @override
  _$ReferentialCopyWith<_Referential> get copyWith =>
      __$ReferentialCopyWithImpl<_Referential>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferentialToJson(this);
  }
}

abstract class _Referential implements Referential {
  const factory _Referential(
      {required final String key,
      @JsonKey(name: 'doc_count') required final int docCount,
      required final String name,
      required final Trail trail}) = _$_Referential;

  factory _Referential.fromJson(Map<String, dynamic> json) =
      _$_Referential.fromJson;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'doc_count')
  int get docCount => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Trail get trail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReferentialCopyWith<_Referential> get copyWith =>
      throw _privateConstructorUsedError;
}

Trail _$TrailFromJson(Map<String, dynamic> json) {
  return _Trail.fromJson(json);
}

/// @nodoc
mixin _$Trail {
  Centroid get centroid => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailCopyWith<Trail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailCopyWith<$Res> {
  factory $TrailCopyWith(Trail value, $Res Function(Trail) then) =
      _$TrailCopyWithImpl<$Res>;
  $Res call({Centroid centroid, int length, String author, String? image});

  $CentroidCopyWith<$Res> get centroid;
}

/// @nodoc
class _$TrailCopyWithImpl<$Res> implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._value, this._then);

  final Trail _value;
  // ignore: unused_field
  final $Res Function(Trail) _then;

  @override
  $Res call({
    Object? centroid = freezed,
    Object? length = freezed,
    Object? author = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      centroid: centroid == freezed
          ? _value.centroid
          : centroid // ignore: cast_nullable_to_non_nullable
              as Centroid,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CentroidCopyWith<$Res> get centroid {
    return $CentroidCopyWith<$Res>(_value.centroid, (value) {
      return _then(_value.copyWith(centroid: value));
    });
  }
}

/// @nodoc
abstract class _$TrailCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$TrailCopyWith(_Trail value, $Res Function(_Trail) then) =
      __$TrailCopyWithImpl<$Res>;
  @override
  $Res call({Centroid centroid, int length, String author, String? image});

  @override
  $CentroidCopyWith<$Res> get centroid;
}

/// @nodoc
class __$TrailCopyWithImpl<$Res> extends _$TrailCopyWithImpl<$Res>
    implements _$TrailCopyWith<$Res> {
  __$TrailCopyWithImpl(_Trail _value, $Res Function(_Trail) _then)
      : super(_value, (v) => _then(v as _Trail));

  @override
  _Trail get _value => super._value as _Trail;

  @override
  $Res call({
    Object? centroid = freezed,
    Object? length = freezed,
    Object? author = freezed,
    Object? image = freezed,
  }) {
    return _then(_Trail(
      centroid: centroid == freezed
          ? _value.centroid
          : centroid // ignore: cast_nullable_to_non_nullable
              as Centroid,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trail implements _Trail {
  const _$_Trail(
      {required this.centroid,
      required this.length,
      required this.author,
      required this.image});

  factory _$_Trail.fromJson(Map<String, dynamic> json) =>
      _$$_TrailFromJson(json);

  @override
  final Centroid centroid;
  @override
  final int length;
  @override
  final String author;
  @override
  final String? image;

  @override
  String toString() {
    return 'Trail(centroid: $centroid, length: $length, author: $author, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trail &&
            const DeepCollectionEquality().equals(other.centroid, centroid) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(centroid),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$TrailCopyWith<_Trail> get copyWith =>
      __$TrailCopyWithImpl<_Trail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailToJson(this);
  }
}

abstract class _Trail implements Trail {
  const factory _Trail(
      {required final Centroid centroid,
      required final int length,
      required final String author,
      required final String? image}) = _$_Trail;

  factory _Trail.fromJson(Map<String, dynamic> json) = _$_Trail.fromJson;

  @override
  Centroid get centroid => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailCopyWith<_Trail> get copyWith => throw _privateConstructorUsedError;
}

Centroid _$CentroidFromJson(Map<String, dynamic> json) {
  return _Centroid.fromJson(json);
}

/// @nodoc
mixin _$Centroid {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CentroidCopyWith<Centroid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentroidCopyWith<$Res> {
  factory $CentroidCopyWith(Centroid value, $Res Function(Centroid) then) =
      _$CentroidCopyWithImpl<$Res>;
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$CentroidCopyWithImpl<$Res> implements $CentroidCopyWith<$Res> {
  _$CentroidCopyWithImpl(this._value, this._then);

  final Centroid _value;
  // ignore: unused_field
  final $Res Function(Centroid) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$CentroidCopyWith<$Res> implements $CentroidCopyWith<$Res> {
  factory _$CentroidCopyWith(_Centroid value, $Res Function(_Centroid) then) =
      __$CentroidCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$CentroidCopyWithImpl<$Res> extends _$CentroidCopyWithImpl<$Res>
    implements _$CentroidCopyWith<$Res> {
  __$CentroidCopyWithImpl(_Centroid _value, $Res Function(_Centroid) _then)
      : super(_value, (v) => _then(v as _Centroid));

  @override
  _Centroid get _value => super._value as _Centroid;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_Centroid(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Centroid implements _Centroid {
  const _$_Centroid(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_Centroid.fromJson(Map<String, dynamic> json) =>
      _$$_CentroidFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'Centroid(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Centroid &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$CentroidCopyWith<_Centroid> get copyWith =>
      __$CentroidCopyWithImpl<_Centroid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CentroidToJson(this);
  }
}

abstract class _Centroid implements Centroid {
  const factory _Centroid(
      {required final String type,
      required final List<double> coordinates}) = _$_Centroid;

  factory _Centroid.fromJson(Map<String, dynamic> json) = _$_Centroid.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CentroidCopyWith<_Centroid> get copyWith =>
      throw _privateConstructorUsedError;
}
