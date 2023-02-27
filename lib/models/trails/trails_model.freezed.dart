// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$TrailsCopyWithImpl<$Res, Trails>;
  @useResult
  $Res call({@HiveField(0) List<Trail>? trailList});
}

/// @nodoc
class _$TrailsCopyWithImpl<$Res, $Val extends Trails>
    implements $TrailsCopyWith<$Res> {
  _$TrailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailList = freezed,
  }) {
    return _then(_value.copyWith(
      trailList: freezed == trailList
          ? _value.trailList
          : trailList // ignore: cast_nullable_to_non_nullable
              as List<Trail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrailsCopyWith<$Res> implements $TrailsCopyWith<$Res> {
  factory _$$_TrailsCopyWith(_$_Trails value, $Res Function(_$_Trails) then) =
      __$$_TrailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<Trail>? trailList});
}

/// @nodoc
class __$$_TrailsCopyWithImpl<$Res>
    extends _$TrailsCopyWithImpl<$Res, _$_Trails>
    implements _$$_TrailsCopyWith<$Res> {
  __$$_TrailsCopyWithImpl(_$_Trails _value, $Res Function(_$_Trails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailList = freezed,
  }) {
    return _then(_$_Trails(
      trailList: freezed == trailList
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
    if (_trailList is EqualUnmodifiableListView) return _trailList;
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
  @pragma('vm:prefer-inline')
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
      _$TrailCopyWithImpl<$Res, Trail>;
  @useResult
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
class _$TrailCopyWithImpl<$Res, $Val extends Trail>
    implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._value, this._then);

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
    Object? occurrencesCount = null,
    Object? details = null,
    Object? image = freezed,
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
      occurrencesCount: null == occurrencesCount
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
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
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrailCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$$_TrailCopyWith(_$_Trail value, $Res Function(_$_Trail) then) =
      __$$_TrailCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_TrailCopyWithImpl<$Res> extends _$TrailCopyWithImpl<$Res, _$_Trail>
    implements _$$_TrailCopyWith<$Res> {
  __$$_TrailCopyWithImpl(_$_Trail _value, $Res Function(_$_Trail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
    Object? author = null,
    Object? position = null,
    Object? occurrencesCount = null,
    Object? details = null,
    Object? image = freezed,
    Object? pathLength = null,
  }) {
    return _then(_$_Trail(
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
      occurrencesCount: null == occurrencesCount
          ? _value.occurrencesCount
          : occurrencesCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      pathLength: null == pathLength
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.occurrencesCount, occurrencesCount) ||
                other.occurrencesCount == occurrencesCount) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pathLength, pathLength) ||
                other.pathLength == pathLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, displayName, author,
      position, occurrencesCount, details, image, pathLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
