import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/trail/trail_model.dart';

part 'trails_model.freezed.dart';
part 'trails_model.g.dart';

@freezed
class Trails with _$Trails {
  @HiveType(typeId: 1, adapterName: 'TrailsAdapter')
  const factory Trails({
    @HiveField(0) List<Trail>? trailList,
  }) = _Trails;
  factory Trails.fromJson(Map<String, dynamic> json) => _$TrailsFromJson(json);
}

@freezed
class Trail with _$Trail {
  @HiveType(typeId: 2, adapterName: 'TrailAdapter')
  const factory Trail({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @JsonKey(name: 'display_name') @HiveField(2) required String displayName,
    @HiveField(3) required String author,
    @HiveField(4) required StartEndPosition position,
    @JsonKey(name: 'occurrences_count')
    @HiveField(5)
        required int occurrencesCount,
    @HiveField(6) required String details,
    @HiveField(7) required Image image,
    @JsonKey(name: 'path_length') @HiveField(8) required int pathLength,
  }) = _Trail;

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
}
