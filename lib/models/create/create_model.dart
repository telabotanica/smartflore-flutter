import 'package:latlong2/latlong.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'dart:convert';

import 'package:smartflore/models/trail/trail_model.dart';

part 'create_model.freezed.dart';
part 'create_model.g.dart';

CreateTrail createTrailFromJson(String str) =>
    CreateTrail.fromJson(json.decode(str));

String createTrailToJson(CreateTrail data) => json.encode(data.toJson());

@freezed
class CreateTrail with _$CreateTrail {
  @HiveType(typeId: 50, adapterName: 'CreateTrailAdapter')
  const factory CreateTrail({
    @HiveField(0) required String name,
    @HiveField(1) required String author,
    @HiveField(2) required SavePosition position,
    @HiveField(3) required List<SaveOccurrence> occurrences,
    @HiveField(4) required SavePath path,
    @JsonKey(name: 'path_length') @HiveField(5) required int pathLength,
    @HiveField(6) required int prm,
    @JsonKey(name: 'best_season') @HiveField(7) required List<bool> bestSeason,
  }) = _CreateTrail;

  factory CreateTrail.fromJson(Map<String, dynamic> json) =>
      _$CreateTrailFromJson(json);
}

@freezed
class SaveOccurrence with _$SaveOccurrence {
  @HiveType(typeId: 51, adapterName: 'SaveOccurrenceAdapter')
  const factory SaveOccurrence({
    @LatLngConverter() @HiveField(0) required LatLng position,
    @HiveField(1) required SaveTaxon taxon,
    @HiveField(2) required List<UploadImage> images,
  }) = _SaveOccurrence;

  factory SaveOccurrence.fromJson(Map<String, dynamic> json) =>
      _$SaveOccurrenceFromJson(json);
}

@freezed
class UploadImage with _$UploadImage {
  @HiveType(typeId: 52, adapterName: 'UploadImageAdapter')
  const factory UploadImage({
    @HiveField(0) required int id,
  }) = _UploadImage;

  factory UploadImage.fromJson(Map<String, dynamic> json) =>
      _$UploadImageFromJson(json);
}

@freezed
class SaveTaxon with _$SaveTaxon {
  @HiveType(typeId: 53, adapterName: 'SaveTaxonAdapter')
  const factory SaveTaxon({
    @HiveField(0) @JsonKey(name: 'name_id') required int nameId,
  }) = _SaveTaxon;

  factory SaveTaxon.fromJson(Map<String, dynamic> json) =>
      _$SaveTaxonFromJson(json);
}

@freezed
class SavePath with _$SavePath {
  @HiveType(typeId: 54, adapterName: 'SavePathAdapter')
  const factory SavePath({
    @LatLngListConverter() @HiveField(0) required List<LatLng> coordinates,
  }) = _SavePath;

  factory SavePath.fromJson(Map<String, dynamic> json) =>
      _$SavePathFromJson(json);
}

@freezed
class SavePosition with _$SavePosition {
  @HiveType(typeId: 55, adapterName: 'SavePositionAdapter')
  const factory SavePosition({
    @LatLngConverter() @HiveField(0) required LatLng start,
    @LatLngConverter() @HiveField(1) required LatLng end,
  }) = _SavePosition;

  factory SavePosition.fromJson(Map<String, dynamic> json) =>
      _$SavePositionFromJson(json);
}
