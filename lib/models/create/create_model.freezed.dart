// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get author => throw _privateConstructorUsedError;
  @HiveField(2)
  SavePosition get position => throw _privateConstructorUsedError;
  @HiveField(3)
  List<SaveOccurrence> get occurrences => throw _privateConstructorUsedError;
  @HiveField(4)
  SavePath get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_length')
  @HiveField(5)
  int get pathLength => throw _privateConstructorUsedError;
  @HiveField(6)
  int get prm => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_season')
  @HiveField(7)
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
      _$CreateTrailCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String author,
      @HiveField(2) SavePosition position,
      @HiveField(3) List<SaveOccurrence> occurrences,
      @HiveField(4) SavePath path,
      @JsonKey(name: 'path_length') @HiveField(5) int pathLength,
      @HiveField(6) int prm,
      @JsonKey(name: 'best_season') @HiveField(7) List<bool> bestSeason});

  $SavePositionCopyWith<$Res> get position;
  $SavePathCopyWith<$Res> get path;
}

/// @nodoc
class _$CreateTrailCopyWithImpl<$Res> implements $CreateTrailCopyWith<$Res> {
  _$CreateTrailCopyWithImpl(this._value, this._then);

  final CreateTrail _value;
  // ignore: unused_field
  final $Res Function(CreateTrail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? occurrences = freezed,
    Object? path = freezed,
    Object? pathLength = freezed,
    Object? prm = freezed,
    Object? bestSeason = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SavePosition,
      occurrences: occurrences == freezed
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<SaveOccurrence>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as SavePath,
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
      prm: prm == freezed
          ? _value.prm
          : prm // ignore: cast_nullable_to_non_nullable
              as int,
      bestSeason: bestSeason == freezed
          ? _value.bestSeason
          : bestSeason // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }

  @override
  $SavePositionCopyWith<$Res> get position {
    return $SavePositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }

  @override
  $SavePathCopyWith<$Res> get path {
    return $SavePathCopyWith<$Res>(_value.path, (value) {
      return _then(_value.copyWith(path: value));
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
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String author,
      @HiveField(2) SavePosition position,
      @HiveField(3) List<SaveOccurrence> occurrences,
      @HiveField(4) SavePath path,
      @JsonKey(name: 'path_length') @HiveField(5) int pathLength,
      @HiveField(6) int prm,
      @JsonKey(name: 'best_season') @HiveField(7) List<bool> bestSeason});

  @override
  $SavePositionCopyWith<$Res> get position;
  @override
  $SavePathCopyWith<$Res> get path;
}

/// @nodoc
class __$$_CreateTrailCopyWithImpl<$Res> extends _$CreateTrailCopyWithImpl<$Res>
    implements _$$_CreateTrailCopyWith<$Res> {
  __$$_CreateTrailCopyWithImpl(
      _$_CreateTrail _value, $Res Function(_$_CreateTrail) _then)
      : super(_value, (v) => _then(v as _$_CreateTrail));

  @override
  _$_CreateTrail get _value => super._value as _$_CreateTrail;

  @override
  $Res call({
    Object? name = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? occurrences = freezed,
    Object? path = freezed,
    Object? pathLength = freezed,
    Object? prm = freezed,
    Object? bestSeason = freezed,
  }) {
    return _then(_$_CreateTrail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SavePosition,
      occurrences: occurrences == freezed
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<SaveOccurrence>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as SavePath,
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
      prm: prm == freezed
          ? _value.prm
          : prm // ignore: cast_nullable_to_non_nullable
              as int,
      bestSeason: bestSeason == freezed
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
          required this.author,
      @HiveField(2)
          required this.position,
      @HiveField(3)
          required final List<SaveOccurrence> occurrences,
      @HiveField(4)
          required this.path,
      @JsonKey(name: 'path_length')
      @HiveField(5)
          required this.pathLength,
      @HiveField(6)
          required this.prm,
      @JsonKey(name: 'best_season')
      @HiveField(7)
          required final List<bool> bestSeason})
      : _occurrences = occurrences,
        _bestSeason = bestSeason;

  factory _$_CreateTrail.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTrailFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String author;
  @override
  @HiveField(2)
  final SavePosition position;
  final List<SaveOccurrence> _occurrences;
  @override
  @HiveField(3)
  List<SaveOccurrence> get occurrences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  @HiveField(4)
  final SavePath path;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(5)
  final int pathLength;
  @override
  @HiveField(6)
  final int prm;
  final List<bool> _bestSeason;
  @override
  @JsonKey(name: 'best_season')
  @HiveField(7)
  List<bool> get bestSeason {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSeason);
  }

  @override
  String toString() {
    return 'CreateTrail(name: $name, author: $author, position: $position, occurrences: $occurrences, path: $path, pathLength: $pathLength, prm: $prm, bestSeason: $bestSeason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTrail &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.pathLength, pathLength) &&
            const DeepCollectionEquality().equals(other.prm, prm) &&
            const DeepCollectionEquality()
                .equals(other._bestSeason, _bestSeason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(_occurrences),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(pathLength),
      const DeepCollectionEquality().hash(prm),
      const DeepCollectionEquality().hash(_bestSeason));

  @JsonKey(ignore: true)
  @override
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
          required final String author,
      @HiveField(2)
          required final SavePosition position,
      @HiveField(3)
          required final List<SaveOccurrence> occurrences,
      @HiveField(4)
          required final SavePath path,
      @JsonKey(name: 'path_length')
      @HiveField(5)
          required final int pathLength,
      @HiveField(6)
          required final int prm,
      @JsonKey(name: 'best_season')
      @HiveField(7)
          required final List<bool> bestSeason}) = _$_CreateTrail;

  factory _CreateTrail.fromJson(Map<String, dynamic> json) =
      _$_CreateTrail.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get author;
  @override
  @HiveField(2)
  SavePosition get position;
  @override
  @HiveField(3)
  List<SaveOccurrence> get occurrences;
  @override
  @HiveField(4)
  SavePath get path;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(5)
  int get pathLength;
  @override
  @HiveField(6)
  int get prm;
  @override
  @JsonKey(name: 'best_season')
  @HiveField(7)
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
  SaveTaxon get taxon => throw _privateConstructorUsedError;
  @HiveField(2)
  List<UploadImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveOccurrenceCopyWith<SaveOccurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveOccurrenceCopyWith<$Res> {
  factory $SaveOccurrenceCopyWith(
          SaveOccurrence value, $Res Function(SaveOccurrence) then) =
      _$SaveOccurrenceCopyWithImpl<$Res>;
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) SaveTaxon taxon,
      @HiveField(2) List<UploadImage> images});

  $SaveTaxonCopyWith<$Res> get taxon;
}

/// @nodoc
class _$SaveOccurrenceCopyWithImpl<$Res>
    implements $SaveOccurrenceCopyWith<$Res> {
  _$SaveOccurrenceCopyWithImpl(this._value, this._then);

  final SaveOccurrence _value;
  // ignore: unused_field
  final $Res Function(SaveOccurrence) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? taxon = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxon: taxon == freezed
          ? _value.taxon
          : taxon // ignore: cast_nullable_to_non_nullable
              as SaveTaxon,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UploadImage>,
    ));
  }

  @override
  $SaveTaxonCopyWith<$Res> get taxon {
    return $SaveTaxonCopyWith<$Res>(_value.taxon, (value) {
      return _then(_value.copyWith(taxon: value));
    });
  }
}

/// @nodoc
abstract class _$$_SaveOccurrenceCopyWith<$Res>
    implements $SaveOccurrenceCopyWith<$Res> {
  factory _$$_SaveOccurrenceCopyWith(
          _$_SaveOccurrence value, $Res Function(_$_SaveOccurrence) then) =
      __$$_SaveOccurrenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) SaveTaxon taxon,
      @HiveField(2) List<UploadImage> images});

  @override
  $SaveTaxonCopyWith<$Res> get taxon;
}

/// @nodoc
class __$$_SaveOccurrenceCopyWithImpl<$Res>
    extends _$SaveOccurrenceCopyWithImpl<$Res>
    implements _$$_SaveOccurrenceCopyWith<$Res> {
  __$$_SaveOccurrenceCopyWithImpl(
      _$_SaveOccurrence _value, $Res Function(_$_SaveOccurrence) _then)
      : super(_value, (v) => _then(v as _$_SaveOccurrence));

  @override
  _$_SaveOccurrence get _value => super._value as _$_SaveOccurrence;

  @override
  $Res call({
    Object? position = freezed,
    Object? taxon = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_SaveOccurrence(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxon: taxon == freezed
          ? _value.taxon
          : taxon // ignore: cast_nullable_to_non_nullable
              as SaveTaxon,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UploadImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 51, adapterName: 'SaveOccurrenceAdapter')
class _$_SaveOccurrence implements _SaveOccurrence {
  const _$_SaveOccurrence(
      {@LatLngConverter() @HiveField(0) required this.position,
      @HiveField(1) required this.taxon,
      @HiveField(2) required final List<UploadImage> images})
      : _images = images;

  factory _$_SaveOccurrence.fromJson(Map<String, dynamic> json) =>
      _$$_SaveOccurrenceFromJson(json);

  @override
  @LatLngConverter()
  @HiveField(0)
  final LatLng position;
  @override
  @HiveField(1)
  final SaveTaxon taxon;
  final List<UploadImage> _images;
  @override
  @HiveField(2)
  List<UploadImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SaveOccurrence(position: $position, taxon: $taxon, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveOccurrence &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.taxon, taxon) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(taxon),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
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
          @HiveField(1) required final SaveTaxon taxon,
          @HiveField(2) required final List<UploadImage> images}) =
      _$_SaveOccurrence;

  factory _SaveOccurrence.fromJson(Map<String, dynamic> json) =
      _$_SaveOccurrence.fromJson;

  @override
  @LatLngConverter()
  @HiveField(0)
  LatLng get position;
  @override
  @HiveField(1)
  SaveTaxon get taxon;
  @override
  @HiveField(2)
  List<UploadImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$_SaveOccurrenceCopyWith<_$_SaveOccurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadImage _$UploadImageFromJson(Map<String, dynamic> json) {
  return _UploadImage.fromJson(json);
}

/// @nodoc
mixin _$UploadImage {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadImageCopyWith<UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageCopyWith<$Res> {
  factory $UploadImageCopyWith(
          UploadImage value, $Res Function(UploadImage) then) =
      _$UploadImageCopyWithImpl<$Res>;
  $Res call({@HiveField(0) int id});
}

/// @nodoc
class _$UploadImageCopyWithImpl<$Res> implements $UploadImageCopyWith<$Res> {
  _$UploadImageCopyWithImpl(this._value, this._then);

  final UploadImage _value;
  // ignore: unused_field
  final $Res Function(UploadImage) _then;

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
abstract class _$$_UploadImageCopyWith<$Res>
    implements $UploadImageCopyWith<$Res> {
  factory _$$_UploadImageCopyWith(
          _$_UploadImage value, $Res Function(_$_UploadImage) then) =
      __$$_UploadImageCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) int id});
}

/// @nodoc
class __$$_UploadImageCopyWithImpl<$Res> extends _$UploadImageCopyWithImpl<$Res>
    implements _$$_UploadImageCopyWith<$Res> {
  __$$_UploadImageCopyWithImpl(
      _$_UploadImage _value, $Res Function(_$_UploadImage) _then)
      : super(_value, (v) => _then(v as _$_UploadImage));

  @override
  _$_UploadImage get _value => super._value as _$_UploadImage;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_UploadImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 52, adapterName: 'UploadImageAdapter')
class _$_UploadImage implements _UploadImage {
  const _$_UploadImage({@HiveField(0) required this.id});

  factory _$_UploadImage.fromJson(Map<String, dynamic> json) =>
      _$$_UploadImageFromJson(json);

  @override
  @HiveField(0)
  final int id;

  @override
  String toString() {
    return 'UploadImage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadImage &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      __$$_UploadImageCopyWithImpl<_$_UploadImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadImageToJson(
      this,
    );
  }
}

abstract class _UploadImage implements UploadImage {
  const factory _UploadImage({@HiveField(0) required final int id}) =
      _$_UploadImage;

  factory _UploadImage.fromJson(Map<String, dynamic> json) =
      _$_UploadImage.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveTaxon _$SaveTaxonFromJson(Map<String, dynamic> json) {
  return _SaveTaxon.fromJson(json);
}

/// @nodoc
mixin _$SaveTaxon {
  @HiveField(0)
  @JsonKey(name: 'name_id')
  int get nameId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveTaxonCopyWith<SaveTaxon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTaxonCopyWith<$Res> {
  factory $SaveTaxonCopyWith(SaveTaxon value, $Res Function(SaveTaxon) then) =
      _$SaveTaxonCopyWithImpl<$Res>;
  $Res call({@HiveField(0) @JsonKey(name: 'name_id') int nameId});
}

/// @nodoc
class _$SaveTaxonCopyWithImpl<$Res> implements $SaveTaxonCopyWith<$Res> {
  _$SaveTaxonCopyWithImpl(this._value, this._then);

  final SaveTaxon _value;
  // ignore: unused_field
  final $Res Function(SaveTaxon) _then;

  @override
  $Res call({
    Object? nameId = freezed,
  }) {
    return _then(_value.copyWith(
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SaveTaxonCopyWith<$Res> implements $SaveTaxonCopyWith<$Res> {
  factory _$$_SaveTaxonCopyWith(
          _$_SaveTaxon value, $Res Function(_$_SaveTaxon) then) =
      __$$_SaveTaxonCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) @JsonKey(name: 'name_id') int nameId});
}

/// @nodoc
class __$$_SaveTaxonCopyWithImpl<$Res> extends _$SaveTaxonCopyWithImpl<$Res>
    implements _$$_SaveTaxonCopyWith<$Res> {
  __$$_SaveTaxonCopyWithImpl(
      _$_SaveTaxon _value, $Res Function(_$_SaveTaxon) _then)
      : super(_value, (v) => _then(v as _$_SaveTaxon));

  @override
  _$_SaveTaxon get _value => super._value as _$_SaveTaxon;

  @override
  $Res call({
    Object? nameId = freezed,
  }) {
    return _then(_$_SaveTaxon(
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 53, adapterName: 'SaveTaxonAdapter')
class _$_SaveTaxon implements _SaveTaxon {
  const _$_SaveTaxon(
      {@HiveField(0) @JsonKey(name: 'name_id') required this.nameId});

  factory _$_SaveTaxon.fromJson(Map<String, dynamic> json) =>
      _$$_SaveTaxonFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'name_id')
  final int nameId;

  @override
  String toString() {
    return 'SaveTaxon(nameId: $nameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTaxon &&
            const DeepCollectionEquality().equals(other.nameId, nameId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameId));

  @JsonKey(ignore: true)
  @override
  _$$_SaveTaxonCopyWith<_$_SaveTaxon> get copyWith =>
      __$$_SaveTaxonCopyWithImpl<_$_SaveTaxon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveTaxonToJson(
      this,
    );
  }
}

abstract class _SaveTaxon implements SaveTaxon {
  const factory _SaveTaxon(
          {@HiveField(0) @JsonKey(name: 'name_id') required final int nameId}) =
      _$_SaveTaxon;

  factory _SaveTaxon.fromJson(Map<String, dynamic> json) =
      _$_SaveTaxon.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'name_id')
  int get nameId;
  @override
  @JsonKey(ignore: true)
  _$$_SaveTaxonCopyWith<_$_SaveTaxon> get copyWith =>
      throw _privateConstructorUsedError;
}

SavePath _$SavePathFromJson(Map<String, dynamic> json) {
  return _SavePath.fromJson(json);
}

/// @nodoc
mixin _$SavePath {
  @LatLngListConverter()
  @HiveField(0)
  List<LatLng> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePathCopyWith<SavePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePathCopyWith<$Res> {
  factory $SavePathCopyWith(SavePath value, $Res Function(SavePath) then) =
      _$SavePathCopyWithImpl<$Res>;
  $Res call({@LatLngListConverter() @HiveField(0) List<LatLng> coordinates});
}

/// @nodoc
class _$SavePathCopyWithImpl<$Res> implements $SavePathCopyWith<$Res> {
  _$SavePathCopyWithImpl(this._value, this._then);

  final SavePath _value;
  // ignore: unused_field
  final $Res Function(SavePath) _then;

  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
abstract class _$$_SavePathCopyWith<$Res> implements $SavePathCopyWith<$Res> {
  factory _$$_SavePathCopyWith(
          _$_SavePath value, $Res Function(_$_SavePath) then) =
      __$$_SavePathCopyWithImpl<$Res>;
  @override
  $Res call({@LatLngListConverter() @HiveField(0) List<LatLng> coordinates});
}

/// @nodoc
class __$$_SavePathCopyWithImpl<$Res> extends _$SavePathCopyWithImpl<$Res>
    implements _$$_SavePathCopyWith<$Res> {
  __$$_SavePathCopyWithImpl(
      _$_SavePath _value, $Res Function(_$_SavePath) _then)
      : super(_value, (v) => _then(v as _$_SavePath));

  @override
  _$_SavePath get _value => super._value as _$_SavePath;

  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_$_SavePath(
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 54, adapterName: 'SavePathAdapter')
class _$_SavePath implements _SavePath {
  const _$_SavePath(
      {@LatLngListConverter()
      @HiveField(0)
          required final List<LatLng> coordinates})
      : _coordinates = coordinates;

  factory _$_SavePath.fromJson(Map<String, dynamic> json) =>
      _$$_SavePathFromJson(json);

  final List<LatLng> _coordinates;
  @override
  @LatLngListConverter()
  @HiveField(0)
  List<LatLng> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'SavePath(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePath &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_SavePathCopyWith<_$_SavePath> get copyWith =>
      __$$_SavePathCopyWithImpl<_$_SavePath>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavePathToJson(
      this,
    );
  }
}

abstract class _SavePath implements SavePath {
  const factory _SavePath(
      {@LatLngListConverter()
      @HiveField(0)
          required final List<LatLng> coordinates}) = _$_SavePath;

  factory _SavePath.fromJson(Map<String, dynamic> json) = _$_SavePath.fromJson;

  @override
  @LatLngListConverter()
  @HiveField(0)
  List<LatLng> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_SavePathCopyWith<_$_SavePath> get copyWith =>
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
      _$SavePositionCopyWithImpl<$Res>;
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class _$SavePositionCopyWithImpl<$Res> implements $SavePositionCopyWith<$Res> {
  _$SavePositionCopyWithImpl(this._value, this._then);

  final SavePosition _value;
  // ignore: unused_field
  final $Res Function(SavePosition) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as LatLng,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$$_SavePositionCopyWith<$Res>
    implements $SavePositionCopyWith<$Res> {
  factory _$$_SavePositionCopyWith(
          _$_SavePosition value, $Res Function(_$_SavePosition) then) =
      __$$_SavePositionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class __$$_SavePositionCopyWithImpl<$Res>
    extends _$SavePositionCopyWithImpl<$Res>
    implements _$$_SavePositionCopyWith<$Res> {
  __$$_SavePositionCopyWithImpl(
      _$_SavePosition _value, $Res Function(_$_SavePosition) _then)
      : super(_value, (v) => _then(v as _$_SavePosition));

  @override
  _$_SavePosition get _value => super._value as _$_SavePosition;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_SavePosition(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as LatLng,
      end: end == freezed
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
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
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
