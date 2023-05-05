// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon_hits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaxonHits _$$_TaxonHitsFromJson(Map<String, dynamic> json) => _$_TaxonHits(
      hits: (json['hits'] as List<dynamic>)
          .map((e) => TaxonHit.fromJson(e as Map<String, dynamic>))
          .toList(),
      nbHits: json['nbHits'] as int,
      page: json['page'] as int,
      nbPages: json['nbPages'] as int,
      hitsPerPage: json['hitsPerPage'] as int,
      nextPageKey: json['nextPageKey'] as int?,
    );

Map<String, dynamic> _$$_TaxonHitsToJson(_$_TaxonHits instance) =>
    <String, dynamic>{
      'hits': instance.hits,
      'nbHits': instance.nbHits,
      'page': instance.page,
      'nbPages': instance.nbPages,
      'hitsPerPage': instance.hitsPerPage,
      'nextPageKey': instance.nextPageKey,
    };

_$_TaxonHit _$$_TaxonHitFromJson(Map<String, dynamic> json) => _$_TaxonHit(
      referentiels: (json['referentiels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bdtfx: json['bdtfx'] == null
          ? null
          : HitBdtfx.fromJson(json['bdtfx'] as Map<String, dynamic>),
      objectId: json['objectId'] as String?,
      highlightResult: json['_highlightResult'] == null
          ? null
          : HighlightResult.fromJson(
              json['_highlightResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaxonHitToJson(_$_TaxonHit instance) =>
    <String, dynamic>{
      'referentiels': instance.referentiels,
      'bdtfx': instance.bdtfx,
      'objectId': instance.objectId,
      '_highlightResult': instance.highlightResult,
    };

_$_HitBdtfx _$$_HitBdtfxFromJson(Map<String, dynamic> json) => _$_HitBdtfx(
      nomenclaturalNumber: json['nomenclatural_number'] as int?,
      scientificName: json['scientific_name'] as String?,
      commonName: json['common_name'] as String?,
    );

Map<String, dynamic> _$$_HitBdtfxToJson(_$_HitBdtfx instance) =>
    <String, dynamic>{
      'nomenclatural_number': instance.nomenclaturalNumber,
      'scientific_name': instance.scientificName,
      'common_name': instance.commonName,
    };

_$_HighlightResult _$$_HighlightResultFromJson(Map<String, dynamic> json) =>
    _$_HighlightResult(
      bdtfx: json['bdtfx'] == null
          ? null
          : HighlightResultBdtfx.fromJson(
              json['bdtfx'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HighlightResultToJson(_$_HighlightResult instance) =>
    <String, dynamic>{
      'bdtfx': instance.bdtfx,
    };

_$_HighlightResultBdtfx _$$_HighlightResultBdtfxFromJson(
        Map<String, dynamic> json) =>
    _$_HighlightResultBdtfx(
      scientificName: json['scientific_name'] == null
          ? null
          : Name.fromJson(json['scientific_name'] as Map<String, dynamic>),
      commonName: json['common_name'] == null
          ? null
          : Name.fromJson(json['common_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HighlightResultBdtfxToJson(
        _$_HighlightResultBdtfx instance) =>
    <String, dynamic>{
      'scientific_name': instance.scientificName,
      'common_name': instance.commonName,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      value: json['value'] as String?,
      matchedWords: (json['matchedWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'value': instance.value,
      'matchedWords': instance.matchedWords,
    };
