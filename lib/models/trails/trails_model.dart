import 'package:freezed_annotation/freezed_annotation.dart';

part 'trails_model.freezed.dart';
part 'trails_model.g.dart';

@freezed
abstract class Trails with _$Trails {
  const factory Trails({
    required int took,
    @JsonKey(name: 'timed_out') required bool timedOut,
    required List<Referential> referentials,
  }) = _Trails;

  factory Trails.fromJson(Map<String, dynamic> json) => _$TrailsFromJson(json);
}

@freezed
abstract class Referential with _$Referential {
  const factory Referential({
    required String key,
    @JsonKey(name: 'doc_count') required int docCount,
    required String name,
    required Trail trail,
  }) = _Referential;

  factory Referential.fromJson(Map<String, dynamic> json) => _$ReferentialFromJson(json);
}

@freezed
abstract class Trail with _$Trail {
  const factory Trail({
    required Centroid centroid,
    required int length,
    required String author,
    required String? image,
  }) = _Trail;

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
}

@freezed
abstract class Centroid with _$Centroid {
  const factory Centroid({
    required String type,
    required List<double> coordinates,
  }) = _Centroid;

  factory Centroid.fromJson(Map<String, dynamic> json) => _$CentroidFromJson(json);
}
