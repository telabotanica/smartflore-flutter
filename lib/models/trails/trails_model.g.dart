// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trails _$$_TrailsFromJson(Map<String, dynamic> json) => _$_Trails(
      took: json['took'] as int,
      timedOut: json['timed_out'] as bool,
      referentials: (json['referentials'] as List<dynamic>)
          .map((e) => Referential.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrailsToJson(_$_Trails instance) => <String, dynamic>{
      'took': instance.took,
      'timed_out': instance.timedOut,
      'referentials': instance.referentials,
    };

_$_Referential _$$_ReferentialFromJson(Map<String, dynamic> json) =>
    _$_Referential(
      key: json['key'] as String,
      docCount: json['doc_count'] as int,
      name: json['name'] as String,
      trail: Trail.fromJson(json['trail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReferentialToJson(_$_Referential instance) =>
    <String, dynamic>{
      'key': instance.key,
      'doc_count': instance.docCount,
      'name': instance.name,
      'trail': instance.trail,
    };

_$_Trail _$$_TrailFromJson(Map<String, dynamic> json) => _$_Trail(
      centroid: Centroid.fromJson(json['centroid'] as Map<String, dynamic>),
      length: json['length'] as int,
      author: json['author'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_TrailToJson(_$_Trail instance) => <String, dynamic>{
      'centroid': instance.centroid,
      'length': instance.length,
      'author': instance.author,
      'image': instance.image,
    };

_$_Centroid _$$_CentroidFromJson(Map<String, dynamic> json) => _$_Centroid(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_CentroidToJson(_$_Centroid instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
