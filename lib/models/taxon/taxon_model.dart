import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'taxon_model.freezed.dart';
part 'taxon_model.g.dart';

Taxon taxonFromJson(String str) => Taxon.fromJson(json.decode(str));

String taxonToJson(Taxon data) => json.encode(data.toJson());

@freezed
abstract class Taxon with _$Taxon {
  const factory Taxon({
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
    required List<TabAPI> tabs,
  }) = _Taxon;

  factory Taxon.fromJson(Map<String, dynamic> json) => _$TaxonFromJson(json);
}

@freezed
abstract class TabAPI with _$TabAPI {
  const factory TabAPI({
    required String title,
    required String type,
    required String icon,
    List<SectionAPI>? sections,
    List<ImageAPI>? images,
    String? url,
  }) = _TabAPI;

  factory TabAPI.fromJson(Map<String, dynamic> json) => _$TabAPIFromJson(json);
}

@freezed
abstract class ImageAPI with _$ImageAPI {
  const factory ImageAPI(
      {required int id,
      required String url,
      required String author}) = _ImageAPI;

  factory ImageAPI.fromJson(Map<String, dynamic> json) =>
      _$ImageAPIFromJson(json);
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
