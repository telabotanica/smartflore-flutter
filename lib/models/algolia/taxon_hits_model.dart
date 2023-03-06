// To parse this JSON data, do
//
//     final taxonHits = taxonHitsFromJson(jsonString);

import 'package:algolia/algolia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'taxon_hits_model.freezed.dart';
part 'taxon_hits_model.g.dart';

TaxonHits taxonHitsFromJson(String str) => TaxonHits.fromJson(json.decode(str));

String taxonHitsToJson(TaxonHits data) => json.encode(data.toJson());

@freezed
class TaxonHits with _$TaxonHits {
  const factory TaxonHits({
    required List<TaxonHit> hits,
    required int nbHits,
    required int page,
    required int nbPages,
    required int hitsPerPage,
    int? nextPageKey,
  }) = _TaxonHits;

  factory TaxonHits.fromJson(Map<String, dynamic> json) =>
      _$TaxonHitsFromJson(json);

  factory TaxonHits.fromResponse(AlgoliaQuerySnapshot response) {
    List<TaxonHit> taxonHitList = [];
    for (var hit in response.hits) {
      taxonHitList.add(TaxonHit.fromJson(hit.toMap()));
    }

    final isLastPage = response.page >= response.nbPages;
    final nextPageKey = isLastPage ? null : response.page + 1;

    return TaxonHits(
        hits: taxonHitList,
        nbHits: response.nbHits,
        page: response.nbPages,
        nbPages: response.nbPages,
        hitsPerPage: response.hitsPerPage,
        nextPageKey: nextPageKey);
  }
}

@freezed
class TaxonHit with _$TaxonHit {
  const factory TaxonHit({
    List<String>? referentiels,
    HitBdtfx? bdtfx,
    String? objectId,
    @JsonKey(name: '_highlightResult') HighlightResult? highlightResult,
  }) = _TaxonHit;

  factory TaxonHit.fromJson(Map<String, dynamic> json) =>
      _$TaxonHitFromJson(json);
}

@freezed
class HitBdtfx with _$HitBdtfx {
  const factory HitBdtfx({
    @JsonKey(name: 'nomenclatural_number') int? nomenclaturalNumber,
    @JsonKey(name: 'scientific_name') String? scientificName,
    @JsonKey(name: 'common_name') String? commonName,
  }) = _HitBdtfx;

  factory HitBdtfx.fromJson(Map<String, dynamic> json) =>
      _$HitBdtfxFromJson(json);
}

@freezed
class HighlightResult with _$HighlightResult {
  const factory HighlightResult({
    HighlightResultBdtfx? bdtfx,
  }) = _HighlightResult;

  factory HighlightResult.fromJson(Map<String, dynamic> json) =>
      _$HighlightResultFromJson(json);
}

@freezed
class HighlightResultBdtfx with _$HighlightResultBdtfx {
  const factory HighlightResultBdtfx({
    @JsonKey(name: 'scientific_name') Name? scientificName,
    @JsonKey(name: 'common_name') Name? commonName,
  }) = _HighlightResultBdtfx;

  factory HighlightResultBdtfx.fromJson(Map<String, dynamic> json) =>
      _$HighlightResultBdtfxFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    String? value,
    List<String>? matchedWords,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
