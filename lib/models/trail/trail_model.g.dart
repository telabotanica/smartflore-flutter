// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trail _$$_TrailFromJson(Map<String, dynamic> json) => _$_Trail(
      trail: TrailData.fromJson(json['trail'] as Map<String, dynamic>),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => Occurrence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrailToJson(_$_Trail instance) => <String, dynamic>{
      'trail': instance.trail,
      'occurrences': instance.occurrences,
    };

_$_Occurrence _$$_OccurrenceFromJson(Map<String, dynamic> json) =>
    _$_Occurrence(
      type: $enumDecode(_$OccurrenceTypeEnumMap, json['type']),
      geometry:
          OccurrenceGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: OccurrenceProperties.fromJson(
          json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OccurrenceToJson(_$_Occurrence instance) =>
    <String, dynamic>{
      'type': _$OccurrenceTypeEnumMap[instance.type],
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

const _$OccurrenceTypeEnumMap = {
  OccurrenceType.Feature: 'Feature',
};

_$_OccurrenceGeometry _$$_OccurrenceGeometryFromJson(
        Map<String, dynamic> json) =>
    _$_OccurrenceGeometry(
      type: $enumDecode(_$GeometryTypeEnumMap, json['type']),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_OccurrenceGeometryToJson(
        _$_OccurrenceGeometry instance) =>
    <String, dynamic>{
      'type': _$GeometryTypeEnumMap[instance.type],
      'coordinates': instance.coordinates,
    };

const _$GeometryTypeEnumMap = {
  GeometryType.Point: 'Point',
};

_$_OccurrenceProperties _$$_OccurrencePropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_OccurrenceProperties(
      idOcc: json['id_occ'] as int,
      idSp: json['id_sp'] as String,
      name: json['name'] as String,
      commonName: json['common_name'] as String,
      image: json['image'] as String?,
      preferredImage: json['prefered_image'] as String?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_OccurrencePropertiesToJson(
        _$_OccurrenceProperties instance) =>
    <String, dynamic>{
      'id_occ': instance.idOcc,
      'id_sp': instance.idSp,
      'name': instance.name,
      'common_name': instance.commonName,
      'image': instance.image,
      'prefered_image': instance.preferredImage,
      'link': instance.link,
    };

_$_TrailData _$$_TrailDataFromJson(Map<String, dynamic> json) => _$_TrailData(
      type: $enumDecode(_$OccurrenceTypeEnumMap, json['type']),
      geometry:
          TrailGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties:
          TrailProperties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrailDataToJson(_$_TrailData instance) =>
    <String, dynamic>{
      'type': _$OccurrenceTypeEnumMap[instance.type],
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

_$_TrailGeometry _$$_TrailGeometryFromJson(Map<String, dynamic> json) =>
    _$_TrailGeometry(
      type: json['type'] as String,
      coordinates:
          const CoordinatesConverter().fromJson(json['coordinates'] as List),
    );

Map<String, dynamic> _$$_TrailGeometryToJson(_$_TrailGeometry instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': const CoordinatesConverter().toJson(instance.coordinates),
    };

_$_TrailProperties _$$_TrailPropertiesFromJson(Map<String, dynamic> json) =>
    _$_TrailProperties(
      id: json['id'] as String,
      name: json['name'] as String,
      centroid: json['centroid'] as String,
      length: json['length'] as int,
      author: json['author'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_TrailPropertiesToJson(_$_TrailProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'centroid': instance.centroid,
      'length': instance.length,
      'author': instance.author,
      'image': instance.image,
    };
