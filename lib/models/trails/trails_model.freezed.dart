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
  @HiveField(0)
  List<Trail>? get trailList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailsCopyWith<Trails> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailsCopyWith<$Res> {
  factory $TrailsCopyWith(Trails value, $Res Function(Trails) then) =
      _$TrailsCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Trail>? trailList});
}

/// @nodoc
class _$TrailsCopyWithImpl<$Res> implements $TrailsCopyWith<$Res> {
  _$TrailsCopyWithImpl(this._value, this._then);

  final Trails _value;
  // ignore: unused_field
  final $Res Function(Trails) _then;

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
abstract class _$$_TrailsCopyWith<$Res> implements $TrailsCopyWith<$Res> {
  factory _$$_TrailsCopyWith(_$_Trails value, $Res Function(_$_Trails) then) =
      __$$_TrailsCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Trail>? trailList});
}

/// @nodoc
class __$$_TrailsCopyWithImpl<$Res> extends _$TrailsCopyWithImpl<$Res>
    implements _$$_TrailsCopyWith<$Res> {
  __$$_TrailsCopyWithImpl(_$_Trails _value, $Res Function(_$_Trails) _then)
      : super(_value, (v) => _then(v as _$_Trails));

  @override
  _$_Trails get _value => super._value as _$_Trails;

  @override
  $Res call({
    Object? trailList = freezed,
  }) {
    return _then(_$_Trails(
      trailList: trailList == freezed
          ? _value._trailList
          : trailList // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'TrailsAdapter')
class _$_Trails implements _Trails {
  const _$_Trails({@HiveField(0) final List<Trail>? trailList})
      : _trailList = trailList;

  factory _$_Trails.fromJson(Map<String, dynamic> json) =>
      _$$_TrailsFromJson(json);

  final List<Trail>? _trailList;
  @override
  @HiveField(0)
  List<Trail>? get trailList {
    final value = _trailList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Trails(trailList: $trailList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trails &&
            const DeepCollectionEquality()
                .equals(other._trailList, _trailList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trailList));

  @JsonKey(ignore: true)
  @override
  _$$_TrailsCopyWith<_$_Trails> get copyWith =>
      __$$_TrailsCopyWithImpl<_$_Trails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailsToJson(
      this,
    );
  }
}

abstract class _Trails implements Trails {
  const factory _Trails({@HiveField(0) final List<Trail>? trailList}) =
      _$_Trails;

  factory _Trails.fromJson(Map<String, dynamic> json) = _$_Trails.fromJson;

  @override
  @HiveField(0)
  List<Trail>? get trailList;
  @override
  @JsonKey(ignore: true)
  _$$_TrailsCopyWith<_$_Trails> get copyWith =>
      throw _privateConstructorUsedError;
}

Trail _$TrailFromJson(Map<String, dynamic> json) {
  return _Trail.fromJson(json);
}

/// @nodoc
mixin _$Trail {
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
  @JsonKey(name: 'occurrences_count')
  @HiveField(5)
  int get occurrencesCount => throw _privateConstructorUsedError;
  @HiveField(6)
  String get details => throw _privateConstructorUsedError;
  @HiveField(7)
  Image? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'path_length')
  @HiveField(8)
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
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @JsonKey(name: 'display_name') @HiveField(2) String displayName,
      @HiveField(3) String author,
      @HiveField(4) StartEndPosition position,
      @JsonKey(name: 'occurrences_count') @HiveField(5) int occurrencesCount,
      @HiveField(6) String details,
      @HiveField(7) Image? image,
      @JsonKey(name: 'path_length') @HiveField(8) int pathLength});

  $StartEndPositionCopyWith<$Res> get position;
  $ImageCopyWith<$Res>? get image;
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
              as Image?,
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
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
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
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @JsonKey(name: 'display_name') @HiveField(2) String displayName,
      @HiveField(3) String author,
      @HiveField(4) StartEndPosition position,
      @JsonKey(name: 'occurrences_count') @HiveField(5) int occurrencesCount,
      @HiveField(6) String details,
      @HiveField(7) Image? image,
      @JsonKey(name: 'path_length') @HiveField(8) int pathLength});

  @override
  $StartEndPositionCopyWith<$Res> get position;
  @override
  $ImageCopyWith<$Res>? get image;
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
              as Image?,
      pathLength: pathLength == freezed
          ? _value.pathLength
          : pathLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'TrailAdapter')
class _$_Trail implements _Trail {
  const _$_Trail(
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
      @JsonKey(name: 'occurrences_count')
      @HiveField(5)
          required this.occurrencesCount,
      @HiveField(6)
          required this.details,
      @HiveField(7)
          this.image,
      @JsonKey(name: 'path_length')
      @HiveField(8)
          required this.pathLength});

  factory _$_Trail.fromJson(Map<String, dynamic> json) =>
      _$$_TrailFromJson(json);

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
  @override
  @JsonKey(name: 'occurrences_count')
  @HiveField(5)
  final int occurrencesCount;
  @override
  @HiveField(6)
  final String details;
  @override
  @HiveField(7)
  final Image? image;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(8)
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
      @JsonKey(name: 'occurrences_count')
      @HiveField(5)
          required final int occurrencesCount,
      @HiveField(6)
          required final String details,
      @HiveField(7)
          final Image? image,
      @JsonKey(name: 'path_length')
      @HiveField(8)
          required final int pathLength}) = _$_Trail;

  factory _Trail.fromJson(Map<String, dynamic> json) = _$_Trail.fromJson;

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
  @JsonKey(name: 'occurrences_count')
  @HiveField(5)
  int get occurrencesCount;
  @override
  @HiveField(6)
  String get details;
  @override
  @HiveField(7)
  Image? get image;
  @override
  @JsonKey(name: 'path_length')
  @HiveField(8)
  int get pathLength;
  @override
  @JsonKey(ignore: true)
  _$$_TrailCopyWith<_$_Trail> get copyWith =>
      throw _privateConstructorUsedError;
}
