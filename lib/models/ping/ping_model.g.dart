// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PingImpl _$$PingImplFromJson(Map<String, dynamic> json) => _$PingImpl(
      isLogged: json['is_logged'] as bool,
      isLocated: json['is_located'] as bool,
      distanceFromTrail: (json['distance_from_trail'] as num?)?.toInt(),
      isOnline: json['is_online'] as bool,
      date: json['date'] as String,
      trail: (json['trail'] as num).toInt(),
    );

Map<String, dynamic> _$$PingImplToJson(_$PingImpl instance) =>
    <String, dynamic>{
      'is_logged': instance.isLogged,
      'is_located': instance.isLocated,
      'distance_from_trail': instance.distanceFromTrail,
      'is_online': instance.isOnline,
      'date': instance.date,
      'trail': instance.trail,
    };
