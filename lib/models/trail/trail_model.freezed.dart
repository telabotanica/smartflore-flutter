// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  @HiveField(2)
  String get displayName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get author => throw _privateConstructorUsedError;
  @HiveField(4)
  StartEndPosition get position => throw _privateConstructorUsedError;
  @HiveField(5)
  List<Occurrence> get occurrences => throw _privateConstructorUsedError;
  @JsonKey(name: 'occurrences_count')
  @HiveField(6)
  int get occurrencesCount => throw _privateConstructorUsedError;
  @HiveField(7)
  Image get image => throw _privateConstructorUsedError;
  @HiveField(8)
  Path get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_length')
  @HiveField(9)
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
      _$TrailDetailsCopyWithImpl<$Res, TrailDetails>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @JsonKey(name: 'display_name') @HiveField(2) String displayName,
      @HiveField(3) String author,
      @HiveField(4) StartEndPosition position,
      @HiveField(5) List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count') @HiveField(6) int occurrencesCount,
      @HiveField(7) Image image,
      @HiveField(8) Path path,
      @JsonKey(name: 'path_length') @HiveField(9) int pathLength});

  $StartEndPositionCopyWith<$Res> get position;
  $ImageCopyWith<$Res> get image;
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class _$TrailDetailsCopyWithImpl<$Res, $Val extends TrailDetails>
    implements $TrailDetailsCopyWith<$Res> {
  _$TrailDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? author = null,
    Object? position = null,
    Object? occurrences = null,
    Object? occurrencesCount = null,
    Object? image = null,
    Object? path = null,
    Object? pathLength = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as StartEndPosition,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
      occurrencesCount: null == occurrencesCount
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      pathLength: null == pathLength
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StartEndPositionCopyWith<$Res> get position {
    return $StartEndPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
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
abstract class _$$_TrailDetailsCopyWith<$Res>
    implements $TrailDetailsCopyWith<$Res> {
  factory _$$_TrailDetailsCopyWith(
          _$_TrailDetails value, $Res Function(_$_TrailDetails) then) =
      __$$_TrailDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @JsonKey(name: 'display_name') @HiveField(2) String displayName,
      @HiveField(3) String author,
      @HiveField(4) StartEndPosition position,
      @HiveField(5) List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count') @HiveField(6) int occurrencesCount,
      @HiveField(7) Image image,
      @HiveField(8) Path path,
      @JsonKey(name: 'path_length') @HiveField(9) int pathLength});

  @override
  $StartEndPositionCopyWith<$Res> get position;
  @override
  $ImageCopyWith<$Res> get image;
  @override
  $PathCopyWith<$Res> get path;
}

/// @nodoc
class __$$_TrailDetailsCopyWithImpl<$Res>
    extends _$TrailDetailsCopyWithImpl<$Res, _$_TrailDetails>
    implements _$$_TrailDetailsCopyWith<$Res> {
  __$$_TrailDetailsCopyWithImpl(
      _$_TrailDetails _value, $Res Function(_$_TrailDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? author = null,
    Object? position = null,
    Object? occurrences = null,
    Object? occurrencesCount = null,
    Object? image = null,
    Object? path = null,
    Object? pathLength = null,
  }) {
    return _then(_$_TrailDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as StartEndPosition,
      occurrences: null == occurrences
          ? _value._occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
      occurrencesCount: null == occurrencesCount
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Path,
      pathLength: null == pathLength
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 10, adapterName: 'TrailDetailAdapter')
class _$_TrailDetails implements _TrailDetails {
  const _$_TrailDetails(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.name,
      @JsonKey(name: 'display_name')
      @HiveField(2)
          required this.displayName,
      @HiveField(3)
          required this.author,
      @HiveField(4)
          required this.position,
      @HiveField(5)
          required final List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count')
      @HiveField(6)
          required this.occurrencesCount,
      @HiveField(7)
          required this.image,
      @HiveField(8)
          required this.path,
      @JsonKey(name: 'path_length')
      @HiveField(9)
          required this.pathLength})
      : _occurrences = occurrences;

  factory _$_TrailDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TrailDetailsFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @JsonKey(name: 'display_name')
  @HiveField(2)
  final String displayName;
  @override
  @HiveField(3)
  final String author;
  @override
  @HiveField(4)
  final StartEndPosition position;
  final List<Occurrence> _occurrences;
  @override
  @HiveField(5)
  List<Occurrence> get occurrences {
    if (_occurrences is EqualUnmodifiableListView) return _occurrences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  @JsonKey(name: 'occurrences_count')
  @HiveField(6)
  final int occurrencesCount;
  @override
  @HiveField(7)
  final Image image;
  @override
  @HiveField(8)
  final Path path;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(9)
  final int pathLength;

  @override
  String toString() {
    return 'TrailDetails(id: $id, name: $name, displayName: $displayName, author: $author, position: $position, occurrences: $occurrences, occurrencesCount: $occurrencesCount, image: $image, path: $path, pathLength: $pathLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrailDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._occurrences, _occurrences) &&
            (identical(other.occurrencesCount, occurrencesCount) ||
                other.occurrencesCount == occurrencesCount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathLength, pathLength) ||
                other.pathLength == pathLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      displayName,
      author,
      position,
      const DeepCollectionEquality().hash(_occurrences),
      occurrencesCount,
      image,
      path,
      pathLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrailDetailsCopyWith<_$_TrailDetails> get copyWith =>
      __$$_TrailDetailsCopyWithImpl<_$_TrailDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailDetailsToJson(
      this,
    );
  }
}

abstract class _TrailDetails implements TrailDetails {
  const factory _TrailDetails(
      {@HiveField(0)
          required final int id,
      @HiveField(1)
          required final String name,
      @JsonKey(name: 'display_name')
      @HiveField(2)
          required final String displayName,
      @HiveField(3)
          required final String author,
      @HiveField(4)
          required final StartEndPosition position,
      @HiveField(5)
          required final List<Occurrence> occurrences,
      @JsonKey(name: 'occurrences_count')
      @HiveField(6)
          required final int occurrencesCount,
      @HiveField(7)
          required final Image image,
      @HiveField(8)
          required final Path path,
      @JsonKey(name: 'path_length')
      @HiveField(9)
          required final int pathLength}) = _$_TrailDetails;

  factory _TrailDetails.fromJson(Map<String, dynamic> json) =
      _$_TrailDetails.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @JsonKey(name: 'display_name')
  @HiveField(2)
  String get displayName;
  @override
  @HiveField(3)
  String get author;
  @override
  @HiveField(4)
  StartEndPosition get position;
  @override
  @HiveField(5)
  List<Occurrence> get occurrences;
  @override
  @JsonKey(name: 'occurrences_count')
  @HiveField(6)
  int get occurrencesCount;
  @override
  @HiveField(7)
  Image get image;
  @override
  @HiveField(8)
  Path get path;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(9)
  int get pathLength;
  @override
  @JsonKey(ignore: true)
  _$$_TrailDetailsCopyWith<_$_TrailDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String url});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_Image(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 11, adapterName: 'ImageAdapter')
class _$_Image implements _Image {
  const _$_Image(
      {@HiveField(0) required this.id, @HiveField(1) required this.url});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String url;

  @override
  String toString() {
    return 'Image(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String url}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Occurrence _$OccurrenceFromJson(Map<String, dynamic> json) {
  return _Occurrence.fromJson(json);
}

/// @nodoc
mixin _$Occurrence {
  @LatLngConverter()
  @HiveField(0)
  LatLng get position => throw _privateConstructorUsedError;
  @HiveField(1)
  TaxonLight get taxon => throw _privateConstructorUsedError;
  @HiveField(2)
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
      _$OccurrenceCopyWithImpl<$Res, Occurrence>;
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) TaxonLight taxon,
      @HiveField(2) List<Image> images});

  $TaxonLightCopyWith<$Res> get taxon;
}

/// @nodoc
class _$OccurrenceCopyWithImpl<$Res, $Val extends Occurrence>
    implements $OccurrenceCopyWith<$Res> {
  _$OccurrenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? taxon = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxon: null == taxon
          ? _value.taxon
          : taxon // ignore: cast_nullable_to_non_nullable
              as TaxonLight,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaxonLightCopyWith<$Res> get taxon {
    return $TaxonLightCopyWith<$Res>(_value.taxon, (value) {
      return _then(_value.copyWith(taxon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OccurrenceCopyWith<$Res>
    implements $OccurrenceCopyWith<$Res> {
  factory _$$_OccurrenceCopyWith(
          _$_Occurrence value, $Res Function(_$_Occurrence) then) =
      __$$_OccurrenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng position,
      @HiveField(1) TaxonLight taxon,
      @HiveField(2) List<Image> images});

  @override
  $TaxonLightCopyWith<$Res> get taxon;
}

/// @nodoc
class __$$_OccurrenceCopyWithImpl<$Res>
    extends _$OccurrenceCopyWithImpl<$Res, _$_Occurrence>
    implements _$$_OccurrenceCopyWith<$Res> {
  __$$_OccurrenceCopyWithImpl(
      _$_Occurrence _value, $Res Function(_$_Occurrence) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? taxon = null,
    Object? images = null,
  }) {
    return _then(_$_Occurrence(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
      taxon: null == taxon
          ? _value.taxon
          : taxon // ignore: cast_nullable_to_non_nullable
              as TaxonLight,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 12, adapterName: 'OccurenceAdapter')
class _$_Occurrence implements _Occurrence {
  const _$_Occurrence(
      {@LatLngConverter() @HiveField(0) required this.position,
      @HiveField(1) required this.taxon,
      @HiveField(2) required final List<Image> images})
      : _images = images;

  factory _$_Occurrence.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceFromJson(json);

  @override
  @LatLngConverter()
  @HiveField(0)
  final LatLng position;
  @override
  @HiveField(1)
  final TaxonLight taxon;
  final List<Image> _images;
  @override
  @HiveField(2)
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
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
            other is _$_Occurrence &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.taxon, taxon) || other.taxon == taxon) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, taxon,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccurrenceCopyWith<_$_Occurrence> get copyWith =>
      __$$_OccurrenceCopyWithImpl<_$_Occurrence>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceToJson(
      this,
    );
  }
}

abstract class _Occurrence implements Occurrence {
  const factory _Occurrence(
      {@LatLngConverter() @HiveField(0) required final LatLng position,
      @HiveField(1) required final TaxonLight taxon,
      @HiveField(2) required final List<Image> images}) = _$_Occurrence;

  factory _Occurrence.fromJson(Map<String, dynamic> json) =
      _$_Occurrence.fromJson;

  @override
  @LatLngConverter()
  @HiveField(0)
  LatLng get position;
  @override
  @HiveField(1)
  TaxonLight get taxon;
  @override
  @HiveField(2)
  List<Image> get images;
  @override
  @JsonKey(ignore: true)
  _$$_OccurrenceCopyWith<_$_Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxonLight _$TaxonLightFromJson(Map<String, dynamic> json) {
  return _TaxonLight.fromJson(json);
}

/// @nodoc
mixin _$TaxonLight {
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  String? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  String get fullScientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxon_repository')
  @HiveField(2)
  String get taxonRepository => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_id')
  @HiveField(3)
  int get nameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vernacular_names')
  @HiveField(4)
  List<String> get vernacularNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonLightCopyWith<TaxonLight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonLightCopyWith<$Res> {
  factory $TaxonLightCopyWith(
          TaxonLight value, $Res Function(TaxonLight) then) =
      _$TaxonLightCopyWithImpl<$Res, TaxonLight>;
  @useResult
  $Res call(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          String? scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          String fullScientificName,
      @JsonKey(name: 'taxon_repository')
      @HiveField(2)
          String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(3)
          int nameId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(4)
          List<String> vernacularNames});
}

/// @nodoc
class _$TaxonLightCopyWithImpl<$Res, $Val extends TaxonLight>
    implements $TaxonLightCopyWith<$Res> {
  _$TaxonLightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scientificName = freezed,
    Object? fullScientificName = null,
    Object? taxonRepository = null,
    Object? nameId = null,
    Object? vernacularNames = null,
  }) {
    return _then(_value.copyWith(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullScientificName: null == fullScientificName
          ? _value.fullScientificName
          : fullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      taxonRepository: null == taxonRepository
          ? _value.taxonRepository
          : taxonRepository // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
      vernacularNames: null == vernacularNames
          ? _value.vernacularNames
          : vernacularNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxonLightCopyWith<$Res>
    implements $TaxonLightCopyWith<$Res> {
  factory _$$_TaxonLightCopyWith(
          _$_TaxonLight value, $Res Function(_$_TaxonLight) then) =
      __$$_TaxonLightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          String? scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          String fullScientificName,
      @JsonKey(name: 'taxon_repository')
      @HiveField(2)
          String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(3)
          int nameId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(4)
          List<String> vernacularNames});
}

/// @nodoc
class __$$_TaxonLightCopyWithImpl<$Res>
    extends _$TaxonLightCopyWithImpl<$Res, _$_TaxonLight>
    implements _$$_TaxonLightCopyWith<$Res> {
  __$$_TaxonLightCopyWithImpl(
      _$_TaxonLight _value, $Res Function(_$_TaxonLight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scientificName = freezed,
    Object? fullScientificName = null,
    Object? taxonRepository = null,
    Object? nameId = null,
    Object? vernacularNames = null,
  }) {
    return _then(_$_TaxonLight(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullScientificName: null == fullScientificName
          ? _value.fullScientificName
          : fullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      taxonRepository: null == taxonRepository
          ? _value.taxonRepository
          : taxonRepository // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
      vernacularNames: null == vernacularNames
          ? _value._vernacularNames
          : vernacularNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 13, adapterName: 'TrailTaxonAdapter')
class _$_TaxonLight implements _TaxonLight {
  const _$_TaxonLight(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          this.scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          required this.fullScientificName,
      @JsonKey(name: 'taxon_repository')
      @HiveField(2)
          required this.taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(3)
          required this.nameId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(4)
          required final List<String> vernacularNames})
      : _vernacularNames = vernacularNames;

  factory _$_TaxonLight.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonLightFromJson(json);

  @override
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  final String? scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  final String fullScientificName;
  @override
  @JsonKey(name: 'taxon_repository')
  @HiveField(2)
  final String taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  @HiveField(3)
  final int nameId;
  final List<String> _vernacularNames;
  @override
  @JsonKey(name: 'vernacular_names')
  @HiveField(4)
  List<String> get vernacularNames {
    if (_vernacularNames is EqualUnmodifiableListView) return _vernacularNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vernacularNames);
  }

  @override
  String toString() {
    return 'TaxonLight(scientificName: $scientificName, fullScientificName: $fullScientificName, taxonRepository: $taxonRepository, nameId: $nameId, vernacularNames: $vernacularNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxonLight &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.fullScientificName, fullScientificName) ||
                other.fullScientificName == fullScientificName) &&
            (identical(other.taxonRepository, taxonRepository) ||
                other.taxonRepository == taxonRepository) &&
            (identical(other.nameId, nameId) || other.nameId == nameId) &&
            const DeepCollectionEquality()
                .equals(other._vernacularNames, _vernacularNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scientificName,
      fullScientificName,
      taxonRepository,
      nameId,
      const DeepCollectionEquality().hash(_vernacularNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxonLightCopyWith<_$_TaxonLight> get copyWith =>
      __$$_TaxonLightCopyWithImpl<_$_TaxonLight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonLightToJson(
      this,
    );
  }
}

abstract class _TaxonLight implements TaxonLight {
  const factory _TaxonLight(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          final String? scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          required final String fullScientificName,
      @JsonKey(name: 'taxon_repository')
      @HiveField(2)
          required final String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(3)
          required final int nameId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(4)
          required final List<String> vernacularNames}) = _$_TaxonLight;

  factory _TaxonLight.fromJson(Map<String, dynamic> json) =
      _$_TaxonLight.fromJson;

  @override
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  String? get scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  String get fullScientificName;
  @override
  @JsonKey(name: 'taxon_repository')
  @HiveField(2)
  String get taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  @HiveField(3)
  int get nameId;
  @override
  @JsonKey(name: 'vernacular_names')
  @HiveField(4)
  List<String> get vernacularNames;
  @override
  @JsonKey(ignore: true)
  _$$_TaxonLightCopyWith<_$_TaxonLight> get copyWith =>
      throw _privateConstructorUsedError;
}

Path _$PathFromJson(Map<String, dynamic> json) {
  return _Path.fromJson(json);
}

/// @nodoc
mixin _$Path {
  @HiveField(0)
  String get type => throw _privateConstructorUsedError;
  @LatLngListConverter()
  @HiveField(1)
  List<LatLng> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathCopyWith<Path> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathCopyWith<$Res> {
  factory $PathCopyWith(Path value, $Res Function(Path) then) =
      _$PathCopyWithImpl<$Res, Path>;
  @useResult
  $Res call(
      {@HiveField(0) String type,
      @LatLngListConverter() @HiveField(1) List<LatLng> coordinates});
}

/// @nodoc
class _$PathCopyWithImpl<$Res, $Val extends Path>
    implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PathCopyWith<$Res> implements $PathCopyWith<$Res> {
  factory _$$_PathCopyWith(_$_Path value, $Res Function(_$_Path) then) =
      __$$_PathCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String type,
      @LatLngListConverter() @HiveField(1) List<LatLng> coordinates});
}

/// @nodoc
class __$$_PathCopyWithImpl<$Res> extends _$PathCopyWithImpl<$Res, _$_Path>
    implements _$$_PathCopyWith<$Res> {
  __$$_PathCopyWithImpl(_$_Path _value, $Res Function(_$_Path) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$_Path(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 14, adapterName: 'PathAdapter')
class _$_Path implements _Path {
  const _$_Path(
      {@HiveField(0)
          this.type = '',
      @LatLngListConverter()
      @HiveField(1)
          final List<LatLng> coordinates = const []})
      : _coordinates = coordinates;

  factory _$_Path.fromJson(Map<String, dynamic> json) => _$$_PathFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String type;
  final List<LatLng> _coordinates;
  @override
  @JsonKey()
  @LatLngListConverter()
  @HiveField(1)
  List<LatLng> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
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
            other is _$_Path &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PathCopyWith<_$_Path> get copyWith =>
      __$$_PathCopyWithImpl<_$_Path>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PathToJson(
      this,
    );
  }
}

abstract class _Path implements Path {
  const factory _Path(
      {@HiveField(0)
          final String type,
      @LatLngListConverter()
      @HiveField(1)
          final List<LatLng> coordinates}) = _$_Path;

  factory _Path.fromJson(Map<String, dynamic> json) = _$_Path.fromJson;

  @override
  @HiveField(0)
  String get type;
  @override
  @LatLngListConverter()
  @HiveField(1)
  List<LatLng> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_PathCopyWith<_$_Path> get copyWith => throw _privateConstructorUsedError;
}

StartEndPosition _$StartEndPositionFromJson(Map<String, dynamic> json) {
  return _StartEndPosition.fromJson(json);
}

/// @nodoc
mixin _$StartEndPosition {
  @LatLngConverter()
  @HiveField(0)
  LatLng get start => throw _privateConstructorUsedError;
  @LatLngConverter()
  @HiveField(1)
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
      _$StartEndPositionCopyWithImpl<$Res, StartEndPosition>;
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class _$StartEndPositionCopyWithImpl<$Res, $Val extends StartEndPosition>
    implements $StartEndPositionCopyWith<$Res> {
  _$StartEndPositionCopyWithImpl(this._value, this._then);

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
abstract class _$$_StartEndPositionCopyWith<$Res>
    implements $StartEndPositionCopyWith<$Res> {
  factory _$$_StartEndPositionCopyWith(
          _$_StartEndPosition value, $Res Function(_$_StartEndPosition) then) =
      __$$_StartEndPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@LatLngConverter() @HiveField(0) LatLng start,
      @LatLngConverter() @HiveField(1) LatLng end});
}

/// @nodoc
class __$$_StartEndPositionCopyWithImpl<$Res>
    extends _$StartEndPositionCopyWithImpl<$Res, _$_StartEndPosition>
    implements _$$_StartEndPositionCopyWith<$Res> {
  __$$_StartEndPositionCopyWithImpl(
      _$_StartEndPosition _value, $Res Function(_$_StartEndPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_StartEndPosition(
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
@HiveType(typeId: 15, adapterName: 'StartEndPositionAdapter')
class _$_StartEndPosition implements _StartEndPosition {
  const _$_StartEndPosition(
      {@LatLngConverter() @HiveField(0) required this.start,
      @LatLngConverter() @HiveField(1) required this.end});

  factory _$_StartEndPosition.fromJson(Map<String, dynamic> json) =>
      _$$_StartEndPositionFromJson(json);

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
    return 'StartEndPosition(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartEndPosition &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartEndPositionCopyWith<_$_StartEndPosition> get copyWith =>
      __$$_StartEndPositionCopyWithImpl<_$_StartEndPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartEndPositionToJson(
      this,
    );
  }
}

abstract class _StartEndPosition implements StartEndPosition {
  const factory _StartEndPosition(
          {@LatLngConverter() @HiveField(0) required final LatLng start,
          @LatLngConverter() @HiveField(1) required final LatLng end}) =
      _$_StartEndPosition;

  factory _StartEndPosition.fromJson(Map<String, dynamic> json) =
      _$_StartEndPosition.fromJson;

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
  _$$_StartEndPositionCopyWith<_$_StartEndPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
