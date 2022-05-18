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

Trail _$TrailFromJson(Map<String, dynamic> json) {
  return _Trail.fromJson(json);
}

/// @nodoc
mixin _$Trail {
  TrailData get trail => throw _privateConstructorUsedError;
  List<Occurrence> get occurrences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailCopyWith<Trail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailCopyWith<$Res> {
  factory $TrailCopyWith(Trail value, $Res Function(Trail) then) =
      _$TrailCopyWithImpl<$Res>;
  $Res call({TrailData trail, List<Occurrence> occurrences});

  $TrailDataCopyWith<$Res> get trail;
}

/// @nodoc
class _$TrailCopyWithImpl<$Res> implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._value, this._then);

  final Trail _value;
  // ignore: unused_field
  final $Res Function(Trail) _then;

  @override
  $Res call({
    Object? trail = freezed,
    Object? occurrences = freezed,
  }) {
    return _then(_value.copyWith(
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as TrailData,
      occurrences: occurrences == freezed
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
    ));
  }

  @override
  $TrailDataCopyWith<$Res> get trail {
    return $TrailDataCopyWith<$Res>(_value.trail, (value) {
      return _then(_value.copyWith(trail: value));
    });
  }
}

/// @nodoc
abstract class _$TrailCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$TrailCopyWith(_Trail value, $Res Function(_Trail) then) =
      __$TrailCopyWithImpl<$Res>;
  @override
  $Res call({TrailData trail, List<Occurrence> occurrences});

  @override
  $TrailDataCopyWith<$Res> get trail;
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
    Object? trail = freezed,
    Object? occurrences = freezed,
  }) {
    return _then(_Trail(
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as TrailData,
      occurrences: occurrences == freezed
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as List<Occurrence>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trail implements _Trail {
  const _$_Trail(
      {required this.trail, required final List<Occurrence> occurrences})
      : _occurrences = occurrences;

  factory _$_Trail.fromJson(Map<String, dynamic> json) =>
      _$$_TrailFromJson(json);

  @override
  final TrailData trail;
  final List<Occurrence> _occurrences;
  @override
  List<Occurrence> get occurrences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occurrences);
  }

  @override
  String toString() {
    return 'Trail(trail: $trail, occurrences: $occurrences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trail &&
            const DeepCollectionEquality().equals(other.trail, trail) &&
            const DeepCollectionEquality()
                .equals(other.occurrences, occurrences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trail),
      const DeepCollectionEquality().hash(occurrences));

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
      {required final TrailData trail,
      required final List<Occurrence> occurrences}) = _$_Trail;

  factory _Trail.fromJson(Map<String, dynamic> json) = _$_Trail.fromJson;

  @override
  TrailData get trail => throw _privateConstructorUsedError;
  @override
  List<Occurrence> get occurrences => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailCopyWith<_Trail> get copyWith => throw _privateConstructorUsedError;
}

Occurrence _$OccurrenceFromJson(Map<String, dynamic> json) {
  return _Occurrence.fromJson(json);
}

/// @nodoc
mixin _$Occurrence {
  OccurrenceType get type => throw _privateConstructorUsedError;
  OccurrenceGeometry get geometry => throw _privateConstructorUsedError;
  OccurrenceProperties get properties => throw _privateConstructorUsedError;

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
      {OccurrenceType type,
      OccurrenceGeometry geometry,
      OccurrenceProperties properties});

  $OccurrenceGeometryCopyWith<$Res> get geometry;
  $OccurrencePropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class _$OccurrenceCopyWithImpl<$Res> implements $OccurrenceCopyWith<$Res> {
  _$OccurrenceCopyWithImpl(this._value, this._then);

  final Occurrence _value;
  // ignore: unused_field
  final $Res Function(Occurrence) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? geometry = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OccurrenceType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as OccurrenceGeometry,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as OccurrenceProperties,
    ));
  }

  @override
  $OccurrenceGeometryCopyWith<$Res> get geometry {
    return $OccurrenceGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }

  @override
  $OccurrencePropertiesCopyWith<$Res> get properties {
    return $OccurrencePropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value));
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
      {OccurrenceType type,
      OccurrenceGeometry geometry,
      OccurrenceProperties properties});

  @override
  $OccurrenceGeometryCopyWith<$Res> get geometry;
  @override
  $OccurrencePropertiesCopyWith<$Res> get properties;
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
    Object? type = freezed,
    Object? geometry = freezed,
    Object? properties = freezed,
  }) {
    return _then(_Occurrence(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OccurrenceType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as OccurrenceGeometry,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as OccurrenceProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occurrence implements _Occurrence {
  const _$_Occurrence(
      {required this.type, required this.geometry, required this.properties});

  factory _$_Occurrence.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceFromJson(json);

  @override
  final OccurrenceType type;
  @override
  final OccurrenceGeometry geometry;
  @override
  final OccurrenceProperties properties;

  @override
  String toString() {
    return 'Occurrence(type: $type, geometry: $geometry, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Occurrence &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(properties));

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
      {required final OccurrenceType type,
      required final OccurrenceGeometry geometry,
      required final OccurrenceProperties properties}) = _$_Occurrence;

  factory _Occurrence.fromJson(Map<String, dynamic> json) =
      _$_Occurrence.fromJson;

  @override
  OccurrenceType get type => throw _privateConstructorUsedError;
  @override
  OccurrenceGeometry get geometry => throw _privateConstructorUsedError;
  @override
  OccurrenceProperties get properties => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OccurrenceCopyWith<_Occurrence> get copyWith =>
      throw _privateConstructorUsedError;
}

OccurrenceGeometry _$OccurrenceGeometryFromJson(Map<String, dynamic> json) {
  return _OccurrenceGeometry.fromJson(json);
}

/// @nodoc
mixin _$OccurrenceGeometry {
  GeometryType get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrenceGeometryCopyWith<OccurrenceGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrenceGeometryCopyWith<$Res> {
  factory $OccurrenceGeometryCopyWith(
          OccurrenceGeometry value, $Res Function(OccurrenceGeometry) then) =
      _$OccurrenceGeometryCopyWithImpl<$Res>;
  $Res call({GeometryType type, List<double> coordinates});
}

/// @nodoc
class _$OccurrenceGeometryCopyWithImpl<$Res>
    implements $OccurrenceGeometryCopyWith<$Res> {
  _$OccurrenceGeometryCopyWithImpl(this._value, this._then);

  final OccurrenceGeometry _value;
  // ignore: unused_field
  final $Res Function(OccurrenceGeometry) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GeometryType,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$OccurrenceGeometryCopyWith<$Res>
    implements $OccurrenceGeometryCopyWith<$Res> {
  factory _$OccurrenceGeometryCopyWith(
          _OccurrenceGeometry value, $Res Function(_OccurrenceGeometry) then) =
      __$OccurrenceGeometryCopyWithImpl<$Res>;
  @override
  $Res call({GeometryType type, List<double> coordinates});
}

/// @nodoc
class __$OccurrenceGeometryCopyWithImpl<$Res>
    extends _$OccurrenceGeometryCopyWithImpl<$Res>
    implements _$OccurrenceGeometryCopyWith<$Res> {
  __$OccurrenceGeometryCopyWithImpl(
      _OccurrenceGeometry _value, $Res Function(_OccurrenceGeometry) _then)
      : super(_value, (v) => _then(v as _OccurrenceGeometry));

  @override
  _OccurrenceGeometry get _value => super._value as _OccurrenceGeometry;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_OccurrenceGeometry(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GeometryType,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccurrenceGeometry implements _OccurrenceGeometry {
  const _$_OccurrenceGeometry(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_OccurrenceGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrenceGeometryFromJson(json);

  @override
  final GeometryType type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'OccurrenceGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OccurrenceGeometry &&
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
  _$OccurrenceGeometryCopyWith<_OccurrenceGeometry> get copyWith =>
      __$OccurrenceGeometryCopyWithImpl<_OccurrenceGeometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrenceGeometryToJson(this);
  }
}

abstract class _OccurrenceGeometry implements OccurrenceGeometry {
  const factory _OccurrenceGeometry(
      {required final GeometryType type,
      required final List<double> coordinates}) = _$_OccurrenceGeometry;

  factory _OccurrenceGeometry.fromJson(Map<String, dynamic> json) =
      _$_OccurrenceGeometry.fromJson;

  @override
  GeometryType get type => throw _privateConstructorUsedError;
  @override
  List<double> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OccurrenceGeometryCopyWith<_OccurrenceGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

OccurrenceProperties _$OccurrencePropertiesFromJson(Map<String, dynamic> json) {
  return _OccurrenceProperties.fromJson(json);
}

/// @nodoc
mixin _$OccurrenceProperties {
  @JsonKey(name: 'id_occ')
  int get idOcc => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_sp')
  String get idSp => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_name')
  String get commonName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'prefered_image')
  String? get preferredImage => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurrencePropertiesCopyWith<OccurrenceProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurrencePropertiesCopyWith<$Res> {
  factory $OccurrencePropertiesCopyWith(OccurrenceProperties value,
          $Res Function(OccurrenceProperties) then) =
      _$OccurrencePropertiesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_occ') int idOcc,
      @JsonKey(name: 'id_sp') String idSp,
      String name,
      @JsonKey(name: 'common_name') String commonName,
      String? image,
      @JsonKey(name: 'prefered_image') String? preferredImage,
      String link});
}

/// @nodoc
class _$OccurrencePropertiesCopyWithImpl<$Res>
    implements $OccurrencePropertiesCopyWith<$Res> {
  _$OccurrencePropertiesCopyWithImpl(this._value, this._then);

  final OccurrenceProperties _value;
  // ignore: unused_field
  final $Res Function(OccurrenceProperties) _then;

  @override
  $Res call({
    Object? idOcc = freezed,
    Object? idSp = freezed,
    Object? name = freezed,
    Object? commonName = freezed,
    Object? image = freezed,
    Object? preferredImage = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      idOcc: idOcc == freezed
          ? _value.idOcc
          : idOcc // ignore: cast_nullable_to_non_nullable
              as int,
      idSp: idSp == freezed
          ? _value.idSp
          : idSp // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: commonName == freezed
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredImage: preferredImage == freezed
          ? _value.preferredImage
          : preferredImage // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OccurrencePropertiesCopyWith<$Res>
    implements $OccurrencePropertiesCopyWith<$Res> {
  factory _$OccurrencePropertiesCopyWith(_OccurrenceProperties value,
          $Res Function(_OccurrenceProperties) then) =
      __$OccurrencePropertiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_occ') int idOcc,
      @JsonKey(name: 'id_sp') String idSp,
      String name,
      @JsonKey(name: 'common_name') String commonName,
      String? image,
      @JsonKey(name: 'prefered_image') String? preferredImage,
      String link});
}

/// @nodoc
class __$OccurrencePropertiesCopyWithImpl<$Res>
    extends _$OccurrencePropertiesCopyWithImpl<$Res>
    implements _$OccurrencePropertiesCopyWith<$Res> {
  __$OccurrencePropertiesCopyWithImpl(
      _OccurrenceProperties _value, $Res Function(_OccurrenceProperties) _then)
      : super(_value, (v) => _then(v as _OccurrenceProperties));

  @override
  _OccurrenceProperties get _value => super._value as _OccurrenceProperties;

  @override
  $Res call({
    Object? idOcc = freezed,
    Object? idSp = freezed,
    Object? name = freezed,
    Object? commonName = freezed,
    Object? image = freezed,
    Object? preferredImage = freezed,
    Object? link = freezed,
  }) {
    return _then(_OccurrenceProperties(
      idOcc: idOcc == freezed
          ? _value.idOcc
          : idOcc // ignore: cast_nullable_to_non_nullable
              as int,
      idSp: idSp == freezed
          ? _value.idSp
          : idSp // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: commonName == freezed
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredImage: preferredImage == freezed
          ? _value.preferredImage
          : preferredImage // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccurrenceProperties implements _OccurrenceProperties {
  const _$_OccurrenceProperties(
      {@JsonKey(name: 'id_occ') required this.idOcc,
      @JsonKey(name: 'id_sp') required this.idSp,
      required this.name,
      @JsonKey(name: 'common_name') required this.commonName,
      required this.image,
      @JsonKey(name: 'prefered_image') required this.preferredImage,
      required this.link});

  factory _$_OccurrenceProperties.fromJson(Map<String, dynamic> json) =>
      _$$_OccurrencePropertiesFromJson(json);

  @override
  @JsonKey(name: 'id_occ')
  final int idOcc;
  @override
  @JsonKey(name: 'id_sp')
  final String idSp;
  @override
  final String name;
  @override
  @JsonKey(name: 'common_name')
  final String commonName;
  @override
  final String? image;
  @override
  @JsonKey(name: 'prefered_image')
  final String? preferredImage;
  @override
  final String link;

  @override
  String toString() {
    return 'OccurrenceProperties(idOcc: $idOcc, idSp: $idSp, name: $name, commonName: $commonName, image: $image, preferredImage: $preferredImage, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OccurrenceProperties &&
            const DeepCollectionEquality().equals(other.idOcc, idOcc) &&
            const DeepCollectionEquality().equals(other.idSp, idSp) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.commonName, commonName) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.preferredImage, preferredImage) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idOcc),
      const DeepCollectionEquality().hash(idSp),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(commonName),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(preferredImage),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$OccurrencePropertiesCopyWith<_OccurrenceProperties> get copyWith =>
      __$OccurrencePropertiesCopyWithImpl<_OccurrenceProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccurrencePropertiesToJson(this);
  }
}

abstract class _OccurrenceProperties implements OccurrenceProperties {
  const factory _OccurrenceProperties(
      {@JsonKey(name: 'id_occ') required final int idOcc,
      @JsonKey(name: 'id_sp') required final String idSp,
      required final String name,
      @JsonKey(name: 'common_name') required final String commonName,
      required final String? image,
      @JsonKey(name: 'prefered_image') required final String? preferredImage,
      required final String link}) = _$_OccurrenceProperties;

  factory _OccurrenceProperties.fromJson(Map<String, dynamic> json) =
      _$_OccurrenceProperties.fromJson;

  @override
  @JsonKey(name: 'id_occ')
  int get idOcc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_sp')
  String get idSp => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'common_name')
  String get commonName => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'prefered_image')
  String? get preferredImage => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OccurrencePropertiesCopyWith<_OccurrenceProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

TrailData _$TrailDataFromJson(Map<String, dynamic> json) {
  return _TrailData.fromJson(json);
}

/// @nodoc
mixin _$TrailData {
  OccurrenceType get type => throw _privateConstructorUsedError;
  TrailGeometry get geometry => throw _privateConstructorUsedError;
  TrailProperties get properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailDataCopyWith<TrailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailDataCopyWith<$Res> {
  factory $TrailDataCopyWith(TrailData value, $Res Function(TrailData) then) =
      _$TrailDataCopyWithImpl<$Res>;
  $Res call(
      {OccurrenceType type,
      TrailGeometry geometry,
      TrailProperties properties});

  $TrailGeometryCopyWith<$Res> get geometry;
  $TrailPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class _$TrailDataCopyWithImpl<$Res> implements $TrailDataCopyWith<$Res> {
  _$TrailDataCopyWithImpl(this._value, this._then);

  final TrailData _value;
  // ignore: unused_field
  final $Res Function(TrailData) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? geometry = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OccurrenceType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as TrailGeometry,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as TrailProperties,
    ));
  }

  @override
  $TrailGeometryCopyWith<$Res> get geometry {
    return $TrailGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }

  @override
  $TrailPropertiesCopyWith<$Res> get properties {
    return $TrailPropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value));
    });
  }
}

/// @nodoc
abstract class _$TrailDataCopyWith<$Res> implements $TrailDataCopyWith<$Res> {
  factory _$TrailDataCopyWith(
          _TrailData value, $Res Function(_TrailData) then) =
      __$TrailDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {OccurrenceType type,
      TrailGeometry geometry,
      TrailProperties properties});

  @override
  $TrailGeometryCopyWith<$Res> get geometry;
  @override
  $TrailPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class __$TrailDataCopyWithImpl<$Res> extends _$TrailDataCopyWithImpl<$Res>
    implements _$TrailDataCopyWith<$Res> {
  __$TrailDataCopyWithImpl(_TrailData _value, $Res Function(_TrailData) _then)
      : super(_value, (v) => _then(v as _TrailData));

  @override
  _TrailData get _value => super._value as _TrailData;

  @override
  $Res call({
    Object? type = freezed,
    Object? geometry = freezed,
    Object? properties = freezed,
  }) {
    return _then(_TrailData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OccurrenceType,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as TrailGeometry,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as TrailProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrailData implements _TrailData {
  const _$_TrailData(
      {required this.type, required this.geometry, required this.properties});

  factory _$_TrailData.fromJson(Map<String, dynamic> json) =>
      _$$_TrailDataFromJson(json);

  @override
  final OccurrenceType type;
  @override
  final TrailGeometry geometry;
  @override
  final TrailProperties properties;

  @override
  String toString() {
    return 'TrailData(type: $type, geometry: $geometry, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrailData &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(properties));

  @JsonKey(ignore: true)
  @override
  _$TrailDataCopyWith<_TrailData> get copyWith =>
      __$TrailDataCopyWithImpl<_TrailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailDataToJson(this);
  }
}

abstract class _TrailData implements TrailData {
  const factory _TrailData(
      {required final OccurrenceType type,
      required final TrailGeometry geometry,
      required final TrailProperties properties}) = _$_TrailData;

  factory _TrailData.fromJson(Map<String, dynamic> json) =
      _$_TrailData.fromJson;

  @override
  OccurrenceType get type => throw _privateConstructorUsedError;
  @override
  TrailGeometry get geometry => throw _privateConstructorUsedError;
  @override
  TrailProperties get properties => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailDataCopyWith<_TrailData> get copyWith =>
      throw _privateConstructorUsedError;
}

TrailGeometry _$TrailGeometryFromJson(Map<String, dynamic> json) {
  return _TrailGeometry.fromJson(json);
}

/// @nodoc
mixin _$TrailGeometry {
  String get type => throw _privateConstructorUsedError;
  @CoordinatesConverter()
  List<LatLng> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailGeometryCopyWith<TrailGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailGeometryCopyWith<$Res> {
  factory $TrailGeometryCopyWith(
          TrailGeometry value, $Res Function(TrailGeometry) then) =
      _$TrailGeometryCopyWithImpl<$Res>;
  $Res call({String type, @CoordinatesConverter() List<LatLng> coordinates});
}

/// @nodoc
class _$TrailGeometryCopyWithImpl<$Res>
    implements $TrailGeometryCopyWith<$Res> {
  _$TrailGeometryCopyWithImpl(this._value, this._then);

  final TrailGeometry _value;
  // ignore: unused_field
  final $Res Function(TrailGeometry) _then;

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
abstract class _$TrailGeometryCopyWith<$Res>
    implements $TrailGeometryCopyWith<$Res> {
  factory _$TrailGeometryCopyWith(
          _TrailGeometry value, $Res Function(_TrailGeometry) then) =
      __$TrailGeometryCopyWithImpl<$Res>;
  @override
  $Res call({String type, @CoordinatesConverter() List<LatLng> coordinates});
}

/// @nodoc
class __$TrailGeometryCopyWithImpl<$Res>
    extends _$TrailGeometryCopyWithImpl<$Res>
    implements _$TrailGeometryCopyWith<$Res> {
  __$TrailGeometryCopyWithImpl(
      _TrailGeometry _value, $Res Function(_TrailGeometry) _then)
      : super(_value, (v) => _then(v as _TrailGeometry));

  @override
  _TrailGeometry get _value => super._value as _TrailGeometry;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_TrailGeometry(
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
class _$_TrailGeometry implements _TrailGeometry {
  const _$_TrailGeometry(
      {required this.type,
      @CoordinatesConverter() required final List<LatLng> coordinates})
      : _coordinates = coordinates;

  factory _$_TrailGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_TrailGeometryFromJson(json);

  @override
  final String type;
  @CoordinatesConverter()
  final List<LatLng> _coordinates;
  @override
  @CoordinatesConverter()
  List<LatLng> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'TrailGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrailGeometry &&
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
  _$TrailGeometryCopyWith<_TrailGeometry> get copyWith =>
      __$TrailGeometryCopyWithImpl<_TrailGeometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailGeometryToJson(this);
  }
}

abstract class _TrailGeometry implements TrailGeometry {
  const factory _TrailGeometry(
          {required final String type,
          @CoordinatesConverter() required final List<LatLng> coordinates}) =
      _$_TrailGeometry;

  factory _TrailGeometry.fromJson(Map<String, dynamic> json) =
      _$_TrailGeometry.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @CoordinatesConverter()
  List<LatLng> get coordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailGeometryCopyWith<_TrailGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

TrailProperties _$TrailPropertiesFromJson(Map<String, dynamic> json) {
  return _TrailProperties.fromJson(json);
}

/// @nodoc
mixin _$TrailProperties {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get centroid => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailPropertiesCopyWith<TrailProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailPropertiesCopyWith<$Res> {
  factory $TrailPropertiesCopyWith(
          TrailProperties value, $Res Function(TrailProperties) then) =
      _$TrailPropertiesCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String centroid,
      int length,
      String author,
      String? image});
}

/// @nodoc
class _$TrailPropertiesCopyWithImpl<$Res>
    implements $TrailPropertiesCopyWith<$Res> {
  _$TrailPropertiesCopyWithImpl(this._value, this._then);

  final TrailProperties _value;
  // ignore: unused_field
  final $Res Function(TrailProperties) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? centroid = freezed,
    Object? length = freezed,
    Object? author = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      centroid: centroid == freezed
          ? _value.centroid
          : centroid // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$TrailPropertiesCopyWith<$Res>
    implements $TrailPropertiesCopyWith<$Res> {
  factory _$TrailPropertiesCopyWith(
          _TrailProperties value, $Res Function(_TrailProperties) then) =
      __$TrailPropertiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String centroid,
      int length,
      String author,
      String? image});
}

/// @nodoc
class __$TrailPropertiesCopyWithImpl<$Res>
    extends _$TrailPropertiesCopyWithImpl<$Res>
    implements _$TrailPropertiesCopyWith<$Res> {
  __$TrailPropertiesCopyWithImpl(
      _TrailProperties _value, $Res Function(_TrailProperties) _then)
      : super(_value, (v) => _then(v as _TrailProperties));

  @override
  _TrailProperties get _value => super._value as _TrailProperties;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? centroid = freezed,
    Object? length = freezed,
    Object? author = freezed,
    Object? image = freezed,
  }) {
    return _then(_TrailProperties(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      centroid: centroid == freezed
          ? _value.centroid
          : centroid // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_TrailProperties implements _TrailProperties {
  const _$_TrailProperties(
      {required this.id,
      required this.name,
      required this.centroid,
      required this.length,
      required this.author,
      required this.image});

  factory _$_TrailProperties.fromJson(Map<String, dynamic> json) =>
      _$$_TrailPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String centroid;
  @override
  final int length;
  @override
  final String author;
  @override
  final String? image;

  @override
  String toString() {
    return 'TrailProperties(id: $id, name: $name, centroid: $centroid, length: $length, author: $author, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrailProperties &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.centroid, centroid) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(centroid),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$TrailPropertiesCopyWith<_TrailProperties> get copyWith =>
      __$TrailPropertiesCopyWithImpl<_TrailProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailPropertiesToJson(this);
  }
}

abstract class _TrailProperties implements TrailProperties {
  const factory _TrailProperties(
      {required final String id,
      required final String name,
      required final String centroid,
      required final int length,
      required final String author,
      required final String? image}) = _$_TrailProperties;

  factory _TrailProperties.fromJson(Map<String, dynamic> json) =
      _$_TrailProperties.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get centroid => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailPropertiesCopyWith<_TrailProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
