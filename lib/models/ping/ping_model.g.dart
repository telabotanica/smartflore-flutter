// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ping _$$_PingFromJson(Map<String, dynamic> json) => _$_Ping(
      isLogged: json['is_logged'] as bool,
      isLocated: json['is_located'] as bool,
      distanceFromTrail: json['distance_from_trail'] as int?,
      isOnline: json['is_online'] as bool,
      date: json['date'] as String,
      trail: json['trail'] as int,
    );

Map<String, dynamic> _$$_PingToJson(_$_Ping instance) => <String, dynamic>{
      'is_logged': instance.isLogged,
      'is_located': instance.isLocated,
      'distance_from_trail': instance.distanceFromTrail,
      'is_online': instance.isOnline,
      'date': instance.date,
      'trail': instance.trail,
    };
