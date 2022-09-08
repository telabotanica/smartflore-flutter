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

TrailList _$TrailListFromJson(Map<String, dynamic> json) {
  return _TrailList.fromJson(json);
}

/// @nodoc
mixin _$TrailList {
  List<Trail>? get trailList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailListCopyWith<TrailList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailListCopyWith<$Res> {
  factory $TrailListCopyWith(TrailList value, $Res Function(TrailList) then) =
      _$TrailListCopyWithImpl<$Res>;
  $Res call({List<Trail>? trailList});
}

/// @nodoc
class _$TrailListCopyWithImpl<$Res> implements $TrailListCopyWith<$Res> {
  _$TrailListCopyWithImpl(this._value, this._then);

  final TrailList _value;
  // ignore: unused_field
  final $Res Function(TrailList) _then;

  @override
  $Res call({
    Object? trailList = freezed,
  }) {
    return _then(_value.copyWith(
      trailList: trailList == freezed
          ? _value.trailList
          : trailList // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TrailListCopyWith<$Res> implements $TrailListCopyWith<$Res> {
  factory _$$_TrailListCopyWith(
          _$_TrailList value, $Res Function(_$_TrailList) then) =
      __$$_TrailListCopyWithImpl<$Res>;
  @override
  $Res call({List<Trail>? trailList});
}

/// @nodoc
class __$$_TrailListCopyWithImpl<$Res> extends _$TrailListCopyWithImpl<$Res>
    implements _$$_TrailListCopyWith<$Res> {
  __$$_TrailListCopyWithImpl(
      _$_TrailList _value, $Res Function(_$_TrailList) _then)
      : super(_value, (v) => _then(v as _$_TrailList));

  @override
  _$_TrailList get _value => super._value as _$_TrailList;

  @override
  $Res call({
    Object? trailList = freezed,
  }) {
    return _then(_$_TrailList(
      trailList: trailList == freezed
          ? _value._trailList
          : trailList // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrailList implements _TrailList {
  const _$_TrailList({final List<Trail>? trailList}) : _trailList = trailList;

  factory _$_TrailList.fromJson(Map<String, dynamic> json) =>
      _$$_TrailListFromJson(json);

  final List<Trail>? _trailList;
  @override
  List<Trail>? get trailList {
    final value = _trailList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrailList(trailList: $trailList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrailList &&
            const DeepCollectionEquality()
                .equals(other._trailList, _trailList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trailList));

  @JsonKey(ignore: true)
  @override
  _$$_TrailListCopyWith<_$_TrailList> get copyWith =>
      __$$_TrailListCopyWithImpl<_$_TrailList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailListToJson(
      this,
    );
  }
}

abstract class _TrailList implements TrailList {
  const factory _TrailList({final List<Trail>? trailList}) = _$_TrailList;

  factory _TrailList.fromJson(Map<String, dynamic> json) =
      _$_TrailList.fromJson;

  @override
  List<Trail>? get trailList;
  @override
  @JsonKey(ignore: true)
  _$$_TrailListCopyWith<_$_TrailList> get copyWith =>
      throw _privateConstructorUsedError;
}

Trail _$TrailFromJson(Map<String, dynamic> json) {
  return _Trail.fromJson(json);
}

/// @nodoc
mixin _$Trail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  StartEndPosition get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'occurrences_count')
  int get occurrencesCount => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_length')
  int get pathLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailCopyWith<Trail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailCopyWith<$Res> {
  factory $TrailCopyWith(Trail value, $Res Function(Trail) then) =
      _$TrailCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      String author,
      StartEndPosition position,
      @JsonKey(name: 'occurrences_count') int occurrencesCount,
      String details,
      Image image,
      @JsonKey(name: 'path_length') int pathLength});

  $StartEndPositionCopyWith<$Res> get position;
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$TrailCopyWithImpl<$Res> implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._value, this._then);

  final Trail _value;
  // ignore: unused_field
  final $Res Function(Trail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? occurrencesCount = freezed,
    Object? details = freezed,
    Object? image = freezed,
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
}

/// @nodoc
abstract class _$$_TrailCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$$_TrailCopyWith(_$_Trail value, $Res Function(_$_Trail) then) =
      __$$_TrailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      String author,
      StartEndPosition position,
      @JsonKey(name: 'occurrences_count') int occurrencesCount,
      String details,
      Image image,
      @JsonKey(name: 'path_length') int pathLength});

  @override
  $StartEndPositionCopyWith<$Res> get position;
  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_TrailCopyWithImpl<$Res> extends _$TrailCopyWithImpl<$Res>
    implements _$$_TrailCopyWith<$Res> {
  __$$_TrailCopyWithImpl(_$_Trail _value, $Res Function(_$_Trail) _then)
      : super(_value, (v) => _then(v as _$_Trail));

  @override
  _$_Trail get _value => super._value as _$_Trail;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? author = freezed,
    Object? position = freezed,
    Object? occurrencesCount = freezed,
    Object? details = freezed,
    Object? image = freezed,
    Object? pathLength = freezed,
  }) {
    return _then(_$_Trail(
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
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trail implements _Trail {
  const _$_Trail(
      {required this.id,
      required this.name,
      @JsonKey(name: 'display_name') required this.displayName,
      required this.author,
      required this.position,
      @JsonKey(name: 'occurrences_count') required this.occurrencesCount,
      required this.details,
      required this.image,
      @JsonKey(name: 'path_length') required this.pathLength});

  factory _$_Trail.fromJson(Map<String, dynamic> json) =>
      _$$_TrailFromJson(json);

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
  @JsonKey(name: 'occurrences_count')
  final int occurrencesCount;
  @override
  final String details;
  @override
  final Image image;
  @override
  @JsonKey(name: 'path_length')
  final int pathLength;

  @override
  String toString() {
    return 'Trail(id: $id, name: $name, displayName: $displayName, author: $author, position: $position, occurrencesCount: $occurrencesCount, details: $details, image: $image, pathLength: $pathLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.occurrencesCount, occurrencesCount) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.image, image) &&
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
      const DeepCollectionEquality().hash(occurrencesCount),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(pathLength));

  @JsonKey(ignore: true)
  @override
  _$$_TrailCopyWith<_$_Trail> get copyWith =>
      __$$_TrailCopyWithImpl<_$_Trail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailToJson(
      this,
    );
  }
}

abstract class _Trail implements Trail {
  const factory _Trail(
      {required final int id,
      required final String name,
      @JsonKey(name: 'display_name') required final String displayName,
      required final String author,
      required final StartEndPosition position,
      @JsonKey(name: 'occurrences_count') required final int occurrencesCount,
      required final String details,
      required final Image image,
      @JsonKey(name: 'path_length') required final int pathLength}) = _$_Trail;

  factory _Trail.fromJson(Map<String, dynamic> json) = _$_Trail.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  String get author;
  @override
  StartEndPosition get position;
  @override
  @JsonKey(name: 'occurrences_count')
  int get occurrencesCount;
  @override
  String get details;
  @override
  Image get image;
  @override
  @JsonKey(name: 'path_length')
  int get pathLength;
  @override
  @JsonKey(ignore: true)
  _$$_TrailCopyWith<_$_Trail> get copyWith =>
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
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, (v) => _then(v as _$_Image));

  @override
  _$_Image get _value => super._value as _$_Image;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Image(
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
            other is _$_Image &&
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
  const factory _Image({required final int id, required final String url}) =
      _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}
