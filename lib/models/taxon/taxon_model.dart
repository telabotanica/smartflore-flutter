/*import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'taxon.freezed.dart';
part 'taxon.g.dart';

Taxon taxonFromJson(String str) => Taxon.fromJson(json.decode(str));

String taxonToJson(Taxon data) => json.encode(data.toJson());

@freezed
abstract class Taxon with _$Taxon {
  const factory Taxon({
    @required String id,
    @required String titre,
    @required String mime,
    @required String texte,
    @required Sections sections,
    @required String href,
  }) = _Taxon;

  factory Taxon.fromJson(Map<String, dynamic> json) => _$TaxonFromJson(json);
}

@freezed
abstract class Sections with _$Sections {
  const factory Sections({
    @required String description,
    @required String usages,
    @required String cologieHabitat,
    @required String sources,
  }) = _Sections;

  factory Sections.fromJson(Map<String, dynamic> json) => _$SectionsFromJson(json);
}
*/
