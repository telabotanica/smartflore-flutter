// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon_hits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxonHitsImpl _$$TaxonHitsImplFromJson(Map<String, dynamic> json) =>
    _$TaxonHitsImpl(
      hits: (json['hits'] as List<dynamic>)
          .map((e) => TaxonHit.fromJson(e as Map<String, dynamic>))
          .toList(),
      nbHits: (json['nbHits'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      nbPages: (json['nbPages'] as num).toInt(),
      hitsPerPage: (json['hitsPerPage'] as num).toInt(),
      nextPageKey: (json['nextPageKey'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaxonHitsImplToJson(_$TaxonHitsImpl instance) =>
    <String, dynamic>{
      'hits': instance.hits,
      'nbHits': instance.nbHits,
      'page': instance.page,
      'nbPages': instance.nbPages,
      'hitsPerPage': instance.hitsPerPage,
      'nextPageKey': instance.nextPageKey,
    };

_$TaxonHitImpl _$$TaxonHitImplFromJson(Map<String, dynamic> json) =>
    _$TaxonHitImpl(
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

Map<String, dynamic> _$$TaxonHitImplToJson(_$TaxonHitImpl instance) =>
    <String, dynamic>{
      'referentiels': instance.referentiels,
      'bdtfx': instance.bdtfx,
      'objectId': instance.objectId,
      '_highlightResult': instance.highlightResult,
    };

_$HitBdtfxImpl _$$HitBdtfxImplFromJson(Map<String, dynamic> json) =>
    _$HitBdtfxImpl(
      nomenclaturalNumber: (json['nomenclatural_number'] as num?)?.toInt(),
      scientificName: json['scientific_name'] as String?,
      commonName: (json['line_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HitBdtfxImplToJson(_$HitBdtfxImpl instance) =>
    <String, dynamic>{
      'nomenclatural_number': instance.nomenclaturalNumber,
      'scientific_name': instance.scientificName,
      'line_names': instance.commonName,
    };

_$HighlightResultImpl _$$HighlightResultImplFromJson(
        Map<String, dynamic> json) =>
    _$HighlightResultImpl(
      bdtfx: json['bdtfx'] == null
          ? null
          : HighlightResultBdtfx.fromJson(
              json['bdtfx'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HighlightResultImplToJson(
        _$HighlightResultImpl instance) =>
    <String, dynamic>{
      'bdtfx': instance.bdtfx,
    };

_$HighlightResultBdtfxImpl _$$HighlightResultBdtfxImplFromJson(
        Map<String, dynamic> json) =>
    _$HighlightResultBdtfxImpl(
      scientificName: json['scientific_name'] == null
          ? null
          : Name.fromJson(json['scientific_name'] as Map<String, dynamic>),
      commonName: (json['common_name'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HighlightResultBdtfxImplToJson(
        _$HighlightResultBdtfxImpl instance) =>
    <String, dynamic>{
      'scientific_name': instance.scientificName,
      'common_name': instance.commonName,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      value: json['value'] as String,
      matchLevel: json['match_level'] as String?,
      matchedWords: json['matched_words'] as List<dynamic>?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'match_level': instance.matchLevel,
      'matched_words': instance.matchedWords,
    };
