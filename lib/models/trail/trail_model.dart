// To parse this JSON data, do
//
//     final trail = trailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'trail_model.freezed.dart';
part 'trail_model.g.dart';

@freezed
abstract class TrailDetails with _$TrailDetails {
  const factory TrailDetails({
    required int id,
    required String name,
    @JsonKey(name: 'display_name') required String displayName,
    required String author,
    required StartEndPosition position,
    required List<Occurrence> occurrences,
    @JsonKey(name: 'occurrences_count') required int occurrencesCount,
    required Image image,
    required Path path,
    @JsonKey(name: 'path_length') required int pathLength,
  }) = _TrailDetails;

  factory TrailDetails.fromJson(Map<String, dynamic> json) =>
      _$TrailDetailsFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    required int id,
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
abstract class Occurrence with _$Occurrence {
  const factory Occurrence({
    @LatLngConverter() required LatLng position,
    required Taxon taxon,
    required List<Image> images,
  }) = _Occurrence;

  factory Occurrence.fromJson(Map<String, dynamic> json) =>
      _$OccurrenceFromJson(json);
}

@freezed
abstract class Taxon with _$Taxon {
  const factory Taxon({
    @JsonKey(name: 'scientific_name') required String scientificName,
    @JsonKey(name: 'full_scientific_name') required String fullScientificName,
    @JsonKey(name: 'taxon_repository') required String taxonRepository,
    @JsonKey(name: 'name_id') required int nameId,
    @JsonKey(name: 'vernacular_names') required List<String> vernacularNames,
  }) = _Taxon;

  factory Taxon.fromJson(Map<String, dynamic> json) => _$TaxonFromJson(json);
}

@freezed
abstract class Path with _$Path {
  const factory Path({
    required String type,
    @LatLngListConverter() required List<LatLng> coordinates,
  }) = _Path;

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);
}

@freezed
abstract class StartEndPosition with _$StartEndPosition {
  const factory StartEndPosition({
    @LatLngConverter() required LatLng start,
    @LatLngConverter() required LatLng end,
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
  String toJson(LatLng latlng) {
    String latLngJson = '{lat: ${latlng.latitude}, lng: ${latlng.longitude}}';
    return latLngJson;
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
      latLngList.add({'lat': coordinate.longitude, 'lng': coordinate.latitude});
    }
    return latLngList;
  }
}
