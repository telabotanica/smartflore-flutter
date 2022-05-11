import 'package:freezed_annotation/freezed_annotation.dart';

part 'trail_model.freezed.dart';
part 'trail_model.g.dart';

@freezed
abstract class Trail with _$Trail {
  const factory Trail({
    required TrailData trail,
    required List<Occurrence> occurrences,
  }) = _Trail;

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
}

@freezed
abstract class Occurrence with _$Occurrence {
  const factory Occurrence({
    required OccurrenceType type,
    required OccurrenceGeometry geometry,
    required OccurrenceProperties properties,
  }) = _Occurrence;

  factory Occurrence.fromJson(Map<String, dynamic> json) => _$OccurrenceFromJson(json);
}

@freezed
abstract class OccurrenceGeometry with _$OccurrenceGeometry {
  const factory OccurrenceGeometry({
    required GeometryType type,
    required List<double> coordinates,
  }) = _OccurrenceGeometry;

  factory OccurrenceGeometry.fromJson(Map<String, dynamic> json) => _$OccurrenceGeometryFromJson(json);
}

enum GeometryType { Point }

final geometryTypeValues = EnumValues({'Point': GeometryType.Point});

@freezed
abstract class OccurrenceProperties with _$OccurrenceProperties {
  const factory OccurrenceProperties({
    @JsonKey(name: 'id_occ') required int idOcc,
    @JsonKey(name: 'id_sp') required String idSp,
    required String name,
    @JsonKey(name: 'common_name') required String commonName,
    required String image,
    @JsonKey(name: 'prefered_image') required String? preferredImage,
    required String link,
  }) = _OccurrenceProperties;

  factory OccurrenceProperties.fromJson(Map<String, dynamic> json) => _$OccurrencePropertiesFromJson(json);
}

enum OccurrenceType { Feature }

final occurrenceTypeValues = EnumValues({'Feature': OccurrenceType.Feature});

@freezed
abstract class TrailData with _$TrailData {
  const factory TrailData({
    required OccurrenceType type,
    required TrailGeometry geometry,
    required TrailProperties properties,
  }) = _TrailData;

  factory TrailData.fromJson(Map<String, dynamic> json) => _$TrailDataFromJson(json);
}

@freezed
abstract class TrailGeometry with _$TrailGeometry {
  const factory TrailGeometry({
    required String type,
    required List<List<double>> coordinates,
  }) = _TrailGeometry;

  factory TrailGeometry.fromJson(Map<String, dynamic> json) => _$TrailGeometryFromJson(json);
}

@freezed
abstract class TrailProperties with _$TrailProperties {
  const factory TrailProperties({
    required String id,
    required String name,
    required String centroid,
    required int length,
    required String author,
    required String? image,
  }) = _TrailProperties;

  factory TrailProperties.fromJson(Map<String, dynamic> json) => _$TrailPropertiesFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap;
    return reverseMap;
  }
}
