// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrailDetails _$TrailDetailsFromJson(Map<String, dynamic> json) {
  return _TrailDetails.fromJson(json);
}

/// @nodoc
mixin _$TrailDetails {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  StartEndPosition get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_position')
  @LatLngConverter()
  LatLng get startPosition => throw _privateConstructorUsedError;
  List<Occurrence> get occurrences => throw _privateConstructorUsedError;
  @JsonKey(name: 'occurrences_count')
  int get occurrencesCount => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;
  Path get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_length')
  int get pathLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailDetailsCopyWith<TrailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailDetailsCopyWith<$Res> {
  factory $TrailDetailsCopyWith(
          TrailDetails value, $Res Function(TrailDetails) then) =
      _$TrailDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      String author,
      StartEndPosition position,
      @JsonKey(name: 'start_position') @LatLngConverter() LatLng startPosition,
      List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count') int occurrencesCount,
      String details,
      Image image,
      Path path,
      @JsonKey(name: 'path_length') int pathLength});

  $StartEndPositionCopyWith<$Res> get position;
  $ImageCopyWith<$Res> get image;
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class _$TrailDetailsCopyWithImpl<$Res> implements $TrailDetailsCopyWith<$Res> {
  _$TrailDetailsCopyWithImpl(this._value, this._then);

  final TrailDetails _value;
  // ignore: unused_field
  final $Res Function(TrailDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? startPosition = freezed,
    Object? occurrences = freezed,
    Object? occurrencesCount = freezed,
    Object? details = freezed,
    Object? image = freezed,
    Object? path = freezed,
    Object? pathLength = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as StartEndPosition,
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      occurrences: occurrences == freezed
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
      occurrencesCount: occurrencesCount == freezed
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StartEndPositionCopyWith<$Res> get position {
    return $StartEndPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }

  @override
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $PathCopyWith<$Res> get path {
    return $PathCopyWith<$Res>(_value.path, (value) {
      return _then(_value.copyWith(path: value));
    });
  }
}

/// @nodoc
abstract class _$TrailDetailsCopyWith<$Res>
    implements $TrailDetailsCopyWith<$Res> {
  factory _$TrailDetailsCopyWith(
          _TrailDetails value, $Res Function(_TrailDetails) then) =
      __$TrailDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      String author,
      StartEndPosition position,
      @JsonKey(name: 'start_position') @LatLngConverter() LatLng startPosition,
      List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count') int occurrencesCount,
      String details,
      Image image,
      Path path,
      @JsonKey(name: 'path_length') int pathLength});

  @override
  $StartEndPositionCopyWith<$Res> get position;
  @override
  $ImageCopyWith<$Res> get image;
  @override
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class __$TrailDetailsCopyWithImpl<$Res> extends _$TrailDetailsCopyWithImpl<$Res>
    implements _$TrailDetailsCopyWith<$Res> {
  __$TrailDetailsCopyWithImpl(
      _TrailDetails _value, $Res Function(_TrailDetails) _then)
      : super(_value, (v) => _then(v as _TrailDetails));

  @override
  _TrailDetails get _value => super._value as _TrailDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? startPosition = freezed,
    Object? occurrences = freezed,
    Object? occurrencesCount = freezed,
    Object? details = freezed,
    Object? image = freezed,
    Object? path = freezed,
    Object? pathLength = freezed,
  }) {
    return _then(_TrailDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as StartEndPosition,
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      occurrences: occurrences == freezed
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
      occurrencesCount: occurrencesCount == freezed
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrailDetails implements _TrailDetails {
  const _$_TrailDetails(
      {required this.id,
      required this.name,
      @JsonKey(name: 'display_name')
          required this.displayName,
      required this.author,
      required this.position,
      @JsonKey(name: 'start_position')
      @LatLngConverter()
          required this.startPosition,
      required final List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count')
          required this.occurrencesCount,
      required this.details,
      required this.image,
      required this.path,
      @JsonKey(name: 'path_length')
          required this.pathLength})
      : _occurrences = occurrences;

  factory _$_TrailDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TrailDetailsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  final String author;
  @override
  final StartEndPosition position;
  @override
  @JsonKey(name: 'start_position')
  @LatLngConverter()
  final LatLng startPosition;
  final List<Occurrence> _occurrences;
  @override
  List<Occurrence> get occurrences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  @JsonKey(name: 'occurrences_count')
  final int occurrencesCount;
  @override
  final String details;
  @override
  final Image image;
  @override
  final Path path;
  @override
  @JsonKey(name: 'path_length')
  final int pathLength;

  @override
  String toString() {
    return 'TrailDetails(id: $id, name: $name, displayName: $displayName, author: $author, position: $position, startPosition: $startPosition, occurrences: $occurrences, occurrencesCount: $occurrencesCount, details: $details, image: $image, path: $path, pathLength: $pathLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrailDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.startPosition, startPosition) &&
            const DeepCollectionEquality()
                .equals(other.occurrences, occurrences) &&
            const DeepCollectionEquality()
                .equals(other.occurrencesCount, occurrencesCount) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.pathLength, pathLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(startPosition),
      const DeepCollectionEquality().hash(occurrences),
      const DeepCollectionEquality().hash(occurrencesCount),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(pathLength));

  @JsonKey(ignore: true)
  @override
  _$TrailDetailsCopyWith<_TrailDetails> get copyWith =>
      __$TrailDetailsCopyWithImpl<_TrailDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailDetailsToJson(this);
  }
}

abstract class _TrailDetails implements TrailDetails {
  const factory _TrailDetails(
      {required final int id,
      required final String name,
      @JsonKey(name: 'display_name')
          required final String displayName,
      required final String author,
      required final StartEndPosition position,
      @JsonKey(name: 'start_position')
      @LatLngConverter()
          required final LatLng startPosition,
      required final List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count')
          required final int occurrencesCount,
      required final String details,
      required final Image image,
      required final Path path,
      @JsonKey(name: 'path_length')
          required final int pathLength}) = _$_TrailDetails;

  factory _TrailDetails.fromJson(Map<String, dynamic> json) =
      _$_TrailDetails.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  StartEndPosition get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'start_position')
  @LatLngConverter()
  LatLng get startPosition => throw _privateConstructorUsedError;
  @override
  List<Occurrence> get occurrences => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'occurrences_count')
  int get occurrencesCount => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  Image get image => throw _privateConstructorUsedError;
  @override
  Path get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'path_length')
  int get pathLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailDetailsCopyWith<_TrailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) then) =
      __$ImageCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(_Image _value, $Res Function(_Image) _then)
      : super(_value, (v) => _then(v as _Image));

  @override
  _Image get _value => super._value as _Image;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_Image(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image({required this.id, required this.url});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'Image(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Image &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ImageCopyWith<_Image> get copyWith =>
      __$ImageCopyWithImpl<_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(this);
  }
}

abstract class _Image implements Image {
  const factory _Image({required final int id, required final String url}) =
      _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageCopyWith<_Image> get copyWith => throw _privateConstructorUsedError;
}

Occurrence _$OccurrenceFromJson(Map<String, dynamic> json) {
  return _Occurrence.fromJson(json);
}

/// @nodoc
mixin _$Occurrence {
  @LatLngConverter()
  LatLng get position => throw _privateConstructorUsedError;
  Taxon get taxon => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrenceCopyWith<Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrenceCopyWith<$Res> {
  factory $OccurrenceCopyWith(
          Occurrence value, $Res Function(Occurrence) then) =
      _$OccurrenceCopyWithImpl<$Res>;
  $Res call(
      {@LatLngConverter() LatLng position, Taxon taxon, List<Image> images});

  $TaxonCopyWith<$Res> get taxon;
}

/// @nodoc
class _$OccurrenceCopyWithImpl<$Res> implements $OccurrenceCopyWith<$Res> {
  _$OccurrenceCopyWithImpl(this._value, this._then);

  final Occurrence _value;
  // ignore: unused_field
  final $Res Function(Occurrence) _then;

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
              as Taxon,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }

  @override
  $TaxonCopyWith<$Res> get taxon {
    return $TaxonCopyWith<$Res>(_value.taxon, (value) {
      return _then(_value.copyWith(taxon: value));
    });
  }
}

/// @nodoc
abstract class _$OccurrenceCopyWith<$Res> implements $OccurrenceCopyWith<$Res> {
  factory _$OccurrenceCopyWith(
          _Occurrence value, $Res Function(_Occurrence) then) =
      __$OccurrenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@LatLngConverter() LatLng position, Taxon taxon, List<Image> images});

  @override
  $TaxonCopyWith<$Res> get taxon;
}

/// @nodoc
class __$OccurrenceCopyWithImpl<$Res> extends _$OccurrenceCopyWithImpl<$Res>
    implements _$OccurrenceCopyWith<$Res> {
  __$OccurrenceCopyWithImpl(
      _Occurrence _value, $Res Function(_Occurrence) _then)
      : super(_value, (v) => _then(v as _Occurrence));

  @override
  _Occurrence get _value => super._value as _Occurrence;

  @override
  $Res call({
    Object? position = freezed,
    Object? taxon = freezed,
    Object? images = freezed,
  }) {
    return _then(_Occurrence(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxon: taxon == freezed
          ? _value.taxon
          : taxon // ignore: cast_nullable_to_non_nullable
              as Taxon,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occurrence implements _Occurrence {
  const _$_Occurrence(
      {@LatLngConverter() required this.position,
      required this.taxon,
      required final List<Image> images})
      : _images = images;

  factory _$_Occurrence.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceFromJson(json);

  @override
  @LatLngConverter()
  final LatLng position;
  @override
  final Taxon taxon;
  final List<Image> _images;
  @override
  List<Image> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Occurrence(position: $position, taxon: $taxon, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Occurrence &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.taxon, taxon) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(taxon),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$OccurrenceCopyWith<_Occurrence> get copyWith =>
      __$OccurrenceCopyWithImpl<_Occurrence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceToJson(this);
  }
}

abstract class _Occurrence implements Occurrence {
  const factory _Occurrence(
      {@LatLngConverter() required final LatLng position,
      required final Taxon taxon,
      required final List<Image> images}) = _$_Occurrence;

  factory _Occurrence.fromJson(Map<String, dynamic> json) =
      _$_Occurrence.fromJson;

  @override
  @LatLngConverter()
  LatLng get position => throw _privateConstructorUsedError;
  @override
  Taxon get taxon => throw _privateConstructorUsedError;
  @override
  List<Image> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OccurrenceCopyWith<_Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

Taxon _$TaxonFromJson(Map<String, dynamic> json) {
  return _Taxon.fromJson(json);
}

/// @nodoc
mixin _$Taxon {
  String get species => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get genus => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  String get referential => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_id')
  int get nameId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonCopyWith<Taxon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonCopyWith<$Res> {
  factory $TaxonCopyWith(Taxon value, $Res Function(Taxon) then) =
      _$TaxonCopyWithImpl<$Res>;
  $Res call(
      {String species,
      String author,
      String genus,
      String family,
      String referential,
      @JsonKey(name: 'name_id') int nameId});
}

/// @nodoc
class _$TaxonCopyWithImpl<$Res> implements $TaxonCopyWith<$Res> {
  _$TaxonCopyWithImpl(this._value, this._then);

  final Taxon _value;
  // ignore: unused_field
  final $Res Function(Taxon) _then;

  @override
  $Res call({
    Object? species = freezed,
    Object? author = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? referential = freezed,
    Object? nameId = freezed,
  }) {
    return _then(_value.copyWith(
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      referential: referential == freezed
          ? _value.referential
          : referential // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaxonCopyWith<$Res> implements $TaxonCopyWith<$Res> {
  factory _$TaxonCopyWith(_Taxon value, $Res Function(_Taxon) then) =
      __$TaxonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String species,
      String author,
      String genus,
      String family,
      String referential,
      @JsonKey(name: 'name_id') int nameId});
}

/// @nodoc
class __$TaxonCopyWithImpl<$Res> extends _$TaxonCopyWithImpl<$Res>
    implements _$TaxonCopyWith<$Res> {
  __$TaxonCopyWithImpl(_Taxon _value, $Res Function(_Taxon) _then)
      : super(_value, (v) => _then(v as _Taxon));

  @override
  _Taxon get _value => super._value as _Taxon;

  @override
  $Res call({
    Object? species = freezed,
    Object? author = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? referential = freezed,
    Object? nameId = freezed,
  }) {
    return _then(_Taxon(
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      referential: referential == freezed
          ? _value.referential
          : referential // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Taxon implements _Taxon {
  const _$_Taxon(
      {required this.species,
      required this.author,
      required this.genus,
      required this.family,
      required this.referential,
      @JsonKey(name: 'name_id') required this.nameId});

  factory _$_Taxon.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonFromJson(json);

  @override
  final String species;
  @override
  final String author;
  @override
  final String genus;
  @override
  final String family;
  @override
  final String referential;
  @override
  @JsonKey(name: 'name_id')
  final int nameId;

  @override
  String toString() {
    return 'Taxon(species: $species, author: $author, genus: $genus, family: $family, referential: $referential, nameId: $nameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Taxon &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.genus, genus) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.referential, referential) &&
            const DeepCollectionEquality().equals(other.nameId, nameId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(genus),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(referential),
      const DeepCollectionEquality().hash(nameId));

  @JsonKey(ignore: true)
  @override
  _$TaxonCopyWith<_Taxon> get copyWith =>
      __$TaxonCopyWithImpl<_Taxon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonToJson(this);
  }
}

abstract class _Taxon implements Taxon {
  const factory _Taxon(
      {required final String species,
      required final String author,
      required final String genus,
      required final String family,
      required final String referential,
      @JsonKey(name: 'name_id') required final int nameId}) = _$_Taxon;

  factory _Taxon.fromJson(Map<String, dynamic> json) = _$_Taxon.fromJson;

  @override
  String get species => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get genus => throw _privateConstructorUsedError;
  @override
  String get family => throw _privateConstructorUsedError;
  @override
  String get referential => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name_id')
  int get nameId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaxonCopyWith<_Taxon> get copyWith => throw _privateConstructorUsedError;
}

Path _$PathFromJson(Map<String, dynamic> json) {
  return _Path.fromJson(json);
}

/// @nodoc
mixin _$Path {
  String get type => throw _privateConstructorUsedError;
  @LatLngListConverter()
  List<LatLng> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathCopyWith<Path> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathCopyWith<$Res> {
  factory $PathCopyWith(Path value, $Res Function(Path) then) =
      _$PathCopyWithImpl<$Res>;
  $Res call({String type, @LatLngListConverter() List<LatLng> coordinates});
}

/// @nodoc
class _$PathCopyWithImpl<$Res> implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._value, this._then);

  final Path _value;
  // ignore: unused_field
  final $Res Function(Path) _then;

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
              as List<LatLng>,
    ));
  }
}

/// @nodoc
abstract class _$PathCopyWith<$Res> implements $PathCopyWith<$Res> {
  factory _$PathCopyWith(_Path value, $Res Function(_Path) then) =
      __$PathCopyWithImpl<$Res>;
  @override
  $Res call({String type, @LatLngListConverter() List<LatLng> coordinates});
}

/// @nodoc
class __$PathCopyWithImpl<$Res> extends _$PathCopyWithImpl<$Res>
    implements _$PathCopyWith<$Res> {
  __$PathCopyWithImpl(_Path _value, $Res Function(_Path) _then)
      : super(_value, (v) => _then(v as _Path));

  @override
  _Path get _value => super._value as _Path;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_Path(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Path implements _Path {
  const _$_Path(
      {required this.type,
      @LatLngListConverter() required final List<LatLng> coordinates})
      : _coordinates = coordinates;

  factory _$_Path.fromJson(Map<String, dynamic> json) => _$$_PathFromJson(json);

  @override
  final String type;
  @LatLngListConverter()
  final List<LatLng> _coordinates;
  @override
  @LatLngListConverter()
  List<LatLng> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'Path(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Path &&
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
  _$PathCopyWith<_Path> get copyWith =>
      __$PathCopyWithImpl<_Path>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PathToJson(this);
  }
}

abstract class _Path implements Path {
  const factory _Path(
          {required final String type,
          @LatLngListConverter() required final List<LatLng> coordinates}) =
      _$_Path;

  factory _Path.fromJson(Map<String, dynamic> json) = _$_Path.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @LatLngListConverter()
  List<LatLng> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PathCopyWith<_Path> get copyWith => throw _privateConstructorUsedError;
}

StartEndPosition _$StartEndPositionFromJson(Map<String, dynamic> json) {
  return _StartEndPosition.fromJson(json);
}

/// @nodoc
mixin _$StartEndPosition {
  @LatLngConverter()
  LatLng get start => throw _privateConstructorUsedError;
  @LatLngConverter()
  LatLng get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartEndPositionCopyWith<StartEndPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartEndPositionCopyWith<$Res> {
  factory $StartEndPositionCopyWith(
          StartEndPosition value, $Res Function(StartEndPosition) then) =
      _$StartEndPositionCopyWithImpl<$Res>;
  $Res call({@LatLngConverter() LatLng start, @LatLngConverter() LatLng end});
}

/// @nodoc
class _$StartEndPositionCopyWithImpl<$Res>
    implements $StartEndPositionCopyWith<$Res> {
  _$StartEndPositionCopyWithImpl(this._value, this._then);

  final StartEndPosition _value;
  // ignore: unused_field
  final $Res Function(StartEndPosition) _then;

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
abstract class _$StartEndPositionCopyWith<$Res>
    implements $StartEndPositionCopyWith<$Res> {
  factory _$StartEndPositionCopyWith(
          _StartEndPosition value, $Res Function(_StartEndPosition) then) =
      __$StartEndPositionCopyWithImpl<$Res>;
  @override
  $Res call({@LatLngConverter() LatLng start, @LatLngConverter() LatLng end});
}

/// @nodoc
class __$StartEndPositionCopyWithImpl<$Res>
    extends _$StartEndPositionCopyWithImpl<$Res>
    implements _$StartEndPositionCopyWith<$Res> {
  __$StartEndPositionCopyWithImpl(
      _StartEndPosition _value, $Res Function(_StartEndPosition) _then)
      : super(_value, (v) => _then(v as _StartEndPosition));

  @override
  _StartEndPosition get _value => super._value as _StartEndPosition;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_StartEndPosition(
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
class _$_StartEndPosition implements _StartEndPosition {
  const _$_StartEndPosition(
      {@LatLngConverter() required this.start,
      @LatLngConverter() required this.end});

  factory _$_StartEndPosition.fromJson(Map<String, dynamic> json) =>
      _$$_StartEndPositionFromJson(json);

  @override
  @LatLngConverter()
  final LatLng start;
  @override
  @LatLngConverter()
  final LatLng end;

  @override
  String toString() {
    return 'StartEndPosition(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartEndPosition &&
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
  _$StartEndPositionCopyWith<_StartEndPosition> get copyWith =>
      __$StartEndPositionCopyWithImpl<_StartEndPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartEndPositionToJson(this);
  }
}

abstract class _StartEndPosition implements StartEndPosition {
  const factory _StartEndPosition(
      {@LatLngConverter() required final LatLng start,
      @LatLngConverter() required final LatLng end}) = _$_StartEndPosition;

  factory _StartEndPosition.fromJson(Map<String, dynamic> json) =
      _$_StartEndPosition.fromJson;

  @override
  @LatLngConverter()
  LatLng get start => throw _privateConstructorUsedError;
  @override
  @LatLngConverter()
  LatLng get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartEndPositionCopyWith<_StartEndPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
