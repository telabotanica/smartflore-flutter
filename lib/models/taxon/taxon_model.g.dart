// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Taxon _$$_TaxonFromJson(Map<String, dynamic> json) => _$_Taxon(
      scientificName: json['scientific_name'] as String,
      fullScientificName: json['full_scientific_name'] as String,
      htmlFullScientificName: json['html_full_scientific_name'] as String,
      genus: json['genus'] as String,
      family: json['family'] as String,
      taxonRepository: json['taxon_repository'] as String,
      nameId: json['name_id'] as int,
      taxonomicId: json['taxonomic_id'] as int,
      vernacularNames: (json['vernacular_names'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tabs: (json['tabs'] as List<dynamic>)
          .map((e) => TabAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TaxonToJson(_$_Taxon instance) => <String, dynamic>{
      'scientific_name': instance.scientificName,
      'full_scientific_name': instance.fullScientificName,
      'html_full_scientific_name': instance.htmlFullScientificName,
      'genus': instance.genus,
      'family': instance.family,
      'taxon_repository': instance.taxonRepository,
      'name_id': instance.nameId,
      'taxonomic_id': instance.taxonomicId,
      'vernacular_names': instance.vernacularNames,
      'tabs': instance.tabs,
    };

_$_TabAPI _$$_TabAPIFromJson(Map<String, dynamic> json) => _$_TabAPI(
      title: json['title'] as String,
      type: json['type'] as String,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_TabAPIToJson(_$_TabAPI instance) => <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'sections': instance.sections,
      'images': instance.images,
      'url': instance.url,
    };

_$_ImageAPI _$$_ImageAPIFromJson(Map<String, dynamic> json) => _$_ImageAPI(
      id: json['id'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ImageAPIToJson(_$_ImageAPI instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$_SectionAPI _$$_SectionAPIFromJson(Map<String, dynamic> json) =>
    _$_SectionAPI(
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_SectionAPIToJson(_$_SectionAPI instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };
