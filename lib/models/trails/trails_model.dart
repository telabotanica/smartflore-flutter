import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartflore/models/trail/trail_model.dart';

part 'trails_model.freezed.dart';
part 'trails_model.g.dart';

@freezed
abstract class TrailList with _$TrailList {
  const factory TrailList({
    List<Trail>? trailList,
  }) = _TrailList;
  factory TrailList.fromJson(Map<String, dynamic> json) =>
      _$TrailListFromJson(json);
}

@freezed
abstract class Trail with _$Trail {
  const factory Trail({
    required int id,
    required String name,
    @JsonKey(name: 'display_name') required String displayName,
    required String author,
    required StartEndPosition position,
    @JsonKey(name: 'occurrences_count') required int occurrencesCount,
    required String details,
    required Image image,
    @JsonKey(name: 'path_length') required int pathLength,
  }) = _Trail;

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    required int id,
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
