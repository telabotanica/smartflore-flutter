import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'taxon_model.freezed.dart';
part 'taxon_model.g.dart';

Taxon taxonFromJson(String str) => Taxon.fromJson(json.decode(str));

String taxonToJson(Taxon data) => json.encode(data.toJson());

@freezed
class Taxon with _$Taxon {
  @HiveType(typeId: 30, adapterName: 'TaxonAdapter')
  const factory Taxon({
    @JsonKey(name: 'scientific_name')
    @HiveField(0)
        required String scientificName,
    @JsonKey(name: 'full_scientific_name')
    @HiveField(1)
        required String fullScientificName,
    @JsonKey(name: 'html_full_scientific_name')
    @HiveField(2)
        required String htmlFullScientificName,
    @HiveField(3) required String genus,
    @HiveField(4) required String family,
    @JsonKey(name: 'taxon_repository')
    @HiveField(5)
        required String taxonRepository,
    @JsonKey(name: 'name_id') @HiveField(6) required int nameId,
    @JsonKey(name: 'taxonomic_id') @HiveField(7) required int taxonomicId,
    @JsonKey(name: 'vernacular_names')
    @HiveField(8)
        required List<String> vernacularNames,
    @HiveField(9) required List<TabAPI> tabs,
  }) = _Taxon;

  factory Taxon.fromJson(Map<String, dynamic> json) => _$TaxonFromJson(json);
}

@freezed
class TabAPI with _$TabAPI {
  @HiveType(typeId: 31, adapterName: 'TabAPIAdapter')
  const factory TabAPI({
    @HiveField(0) required String title,
    @HiveField(1) required String type,
    @HiveField(2) required String icon,
    @HiveField(3) List<SectionAPI>? sections,
    @HiveField(4) List<ImageAPI>? images,
    @HiveField(5) String? url,
  }) = _TabAPI;

  factory TabAPI.fromJson(Map<String, dynamic> json) => _$TabAPIFromJson(json);
}

@freezed
class ImageAPI with _$ImageAPI {
  @HiveType(typeId: 32, adapterName: 'ImageAPIAdapter')
  const factory ImageAPI(
      {@HiveField(0) required int id,
      @HiveField(1) required String url,
      @HiveField(2) required String author}) = _ImageAPI;

  factory ImageAPI.fromJson(Map<String, dynamic> json) =>
      _$ImageAPIFromJson(json);
}

@freezed
class SectionAPI with _$SectionAPI {
  @HiveType(typeId: 33, adapterName: 'SectionAPIAdapter')
  const factory SectionAPI({
    @HiveField(0) required String title,
    @HiveField(1) required String text,
  }) = _SectionAPI;

  factory SectionAPI.fromJson(Map<String, dynamic> json) =>
      _$SectionAPIFromJson(json);
}
