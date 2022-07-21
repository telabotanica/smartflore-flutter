// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trails_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrailList _$$_TrailListFromJson(Map<String, dynamic> json) => _$_TrailList(
      trailList: (json['trailList'] as List<dynamic>?)
          ?.map((e) => Trail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrailListToJson(_$_TrailList instance) =>
    <String, dynamic>{
      'trailList': instance.trailList,
    };

_$_Trail _$$_TrailFromJson(Map<String, dynamic> json) => _$_Trail(
      id: json['id'] as int,
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      author: json['author'] as String,
      position:
          StartEndPosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrencesCount: json['occurrences_count'] as int,
      details: json['details'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      pathLength: json['path_length'] as int,
    );

Map<String, dynamic> _$$_TrailToJson(_$_Trail instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'author': instance.author,
      'position': instance.position,
      'occurrences_count': instance.occurrencesCount,
      'details': instance.details,
      'image': instance.image,
      'path_length': instance.pathLength,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      id: json['id'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
