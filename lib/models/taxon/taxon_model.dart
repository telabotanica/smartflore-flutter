import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'taxon_model.freezed.dart';
part 'taxon_model.g.dart';

TaxonAPI taxonApiFromJson(String str) => TaxonAPI.fromJson(json.decode(str));

String taxonApiToJson(TaxonAPI data) => json.encode(data.toJson());

@freezed
abstract class TaxonAPI with _$TaxonAPI {
  const factory TaxonAPI({
    @JsonKey(name: 'scientific_name') required String scientificName,
    @JsonKey(name: 'full_scientific_name') required String fullScientificName,
    @JsonKey(name: 'html_full_scientific_name')
        required String htmlFullScientificName,
    required String genus,
    required String family,
    @JsonKey(name: 'taxon_repository') required String taxonRepository,
    @JsonKey(name: 'name_id') required int nameId,
    @JsonKey(name: 'taxonomic_id') required int taxonomicId,
    @JsonKey(name: 'vernacular_names') required List<String> vernacularNames,
    @JsonKey(name: 'wikipedia_url') required String wikipediaUrl,
    @JsonKey(name: 'map_url') required String mapUrl,
    required CardAPI card,
    required List<ImageAPI> images,
  }) = _TaxonAPI;

  factory TaxonAPI.fromJson(Map<String, dynamic> json) =>
      _$TaxonAPIFromJson(json);
}

@freezed
abstract class CardAPI with _$CardAPI {
  const factory CardAPI({
    required List<SectionAPI> sections,
    required List<TabAPI> tabs,
  }) = _CardAPI;

  factory CardAPI.fromJson(Map<String, dynamic> json) =>
      _$CardAPIFromJson(json);
}

@freezed
abstract class SectionAPI with _$SectionAPI {
  const factory SectionAPI({
    required String title,
    required String text,
  }) = _SectionAPI;

  factory SectionAPI.fromJson(Map<String, dynamic> json) =>
      _$SectionAPIFromJson(json);
}

@freezed
abstract class TabAPI with _$TabAPI {
  const factory TabAPI({
    required String title,
    required String type,
  }) = _TabAPI;

  factory TabAPI.fromJson(Map<String, dynamic> json) => _$TabAPIFromJson(json);
}

@freezed
abstract class ImageAPI with _$ImageAPI {
  const factory ImageAPI({
    required int id,
    required String url,
  }) = _ImageAPI;

  factory ImageAPI.fromJson(Map<String, dynamic> json) =>
      _$ImageAPIFromJson(json);
}
