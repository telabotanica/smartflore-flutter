import 'package:latlong2/latlong.dart' hide Path;
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
    @HiveField(1) required SavePosition position,
    @HiveField(2) @Default([]) List<SaveOccurrence> occurrences,
    @HiveField(3) @Default(Path()) Path path,
    @HiveField(5) @Default(-1) int prm,
    @JsonKey(name: 'best_season')
    @HiveField(6)
    @Default([false, false, false, false])
        List<bool> bestSeason,
  }) = _CreateTrail;

  factory CreateTrail.fromJson(Map<String, dynamic> json) =>
      _$CreateTrailFromJson(json);
}

@freezed
class SaveOccurrence with _$SaveOccurrence {
  @HiveType(typeId: 51, adapterName: 'SaveOccurrenceAdapter')
  const factory SaveOccurrence({
    @LatLngConverter() @HiveField(0) required LatLng position,
    @HiveField(1) @Default('') String taxon_id,
    @HiveField(2) @Default('') String image_id,
  }) = _SaveOccurrence;

  factory SaveOccurrence.fromJson(Map<String, dynamic> json) =>
      _$SaveOccurrenceFromJson(json);
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
