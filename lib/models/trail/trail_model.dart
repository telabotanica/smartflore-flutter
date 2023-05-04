// To parse this JSON data, do
//
//     final trail = trailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';

part 'trail_model.freezed.dart';
part 'trail_model.g.dart';

@freezed
class TrailDetails with _$TrailDetails {
  @HiveType(typeId: 10, adapterName: 'TrailDetailAdapter')
  const factory TrailDetails({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @JsonKey(name: 'display_name') @HiveField(2) required String displayName,
    @HiveField(3) required String author,
    @HiveField(4) required StartEndPosition position,
    @HiveField(5) required List<Occurrence> occurrences,
    @JsonKey(name: 'occurrences_count')
    @HiveField(6)
        required int occurrencesCount,
    @HiveField(7) required Image image,
    @HiveField(8) required Path path,
    @JsonKey(name: 'path_length') @HiveField(9) required int pathLength,
  }) = _TrailDetails;

  factory TrailDetails.fromJson(Map<String, dynamic> json) =>
      _$TrailDetailsFromJson(json);
}

@freezed
class Image with _$Image {
  @HiveType(typeId: 11, adapterName: 'ImageAdapter')
  const factory Image({
    @HiveField(0) required int id,
    @HiveField(1) required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Occurrence with _$Occurrence {
  @HiveType(typeId: 12, adapterName: 'OccurenceAdapter')
  const factory Occurrence({
    @LatLngConverter() @HiveField(0) required LatLng position,
    @HiveField(1) required TaxonLight taxon,
    @HiveField(2) required List<Image> images,
  }) = _Occurrence;

  factory Occurrence.fromJson(Map<String, dynamic> json) =>
      _$OccurrenceFromJson(json);
}

@freezed
class TaxonLight with _$TaxonLight {
  @HiveType(typeId: 13, adapterName: 'TrailTaxonAdapter')
  const factory TaxonLight({
    @JsonKey(name: 'scientific_name') @HiveField(0) String? scientificName,
    @JsonKey(name: 'full_scientific_name')
    @HiveField(1)
        required String fullScientificName,
    @JsonKey(name: 'taxon_repository')
    @HiveField(2)
        required String taxonRepository,
    @JsonKey(name: 'name_id') @HiveField(3) required int nameId,
    @JsonKey(name: 'vernacular_names')
    @HiveField(4)
        required List<String> vernacularNames,
  }) = _TaxonLight;

  factory TaxonLight.fromJson(Map<String, dynamic> json) =>
      _$TaxonLightFromJson(json);

  factory TaxonLight.fromTaxon(Taxon taxon) {
    return TaxonLight(
        scientificName: taxon.scientificName,
        fullScientificName: taxon.fullScientificName,
        taxonRepository: taxon.taxonRepository,
        nameId: taxon.nameId,
        vernacularNames: taxon.vernacularNames);
  }
}

@freezed
class Path with _$Path {
  @HiveType(typeId: 14, adapterName: 'PathAdapter')
  const factory Path({
    @HiveField(0) @Default('') String type,
    @LatLngListConverter() @HiveField(1) @Default([]) List<LatLng> coordinates,
  }) = _Path;

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);
}

@freezed
abstract class StartEndPosition with _$StartEndPosition {
  @HiveType(typeId: 15, adapterName: 'StartEndPositionAdapter')
  const factory StartEndPosition({
    @LatLngConverter() @HiveField(0) required LatLng start,
    @LatLngConverter() @HiveField(1) required LatLng end,
  }) = _StartEndPosition;

  factory StartEndPosition.fromJson(Map<String, dynamic> json) =>
      _$StartEndPositionFromJson(json);
}

class LatLngConverter implements JsonConverter<LatLng, dynamic> {
  const LatLngConverter();

  @override
  LatLng fromJson(coordinates) {
    LatLng latLng = LatLng(coordinates['lat'], coordinates['lng']);
    return latLng;
  }

  @override
  dynamic toJson(LatLng latlng) {
    return {'lat': latlng.latitude, 'lng': latlng.longitude};
  }
}

class LatLngListConverter
    implements JsonConverter<List<LatLng>, List<dynamic>> {
  const LatLngListConverter();
  final LatLngConverter latLng = const LatLngConverter();

  @override
  List<LatLng> fromJson(coordinates) {
    List<LatLng> latLngList = [];
    for (var coordinate in coordinates) {
      latLngList.add(latLng.fromJson(coordinate));
    }
    return latLngList;
  }

  @override
  List<dynamic> toJson(coordinates) {
    List<dynamic> latLngList = [];
    for (var coordinate in coordinates) {
      latLngList.add({'lat': coordinate.latitude, 'lng': coordinate.longitude});
    }
    return latLngList;
  }
}
