// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trails_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrailsAdapter extends TypeAdapter<_$TrailsImpl> {
  @override
  final int typeId = 1;

  @override
  _$TrailsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TrailsImpl(
      trailList: (fields[0] as List?)?.cast<Trail>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$TrailsImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.trailList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrailAdapter extends TypeAdapter<_$TrailImpl> {
  @override
  final int typeId = 2;

  @override
  _$TrailImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TrailImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      displayName: fields[2] as String,
      author: fields[3] as String,
      position: fields[4] as StartEndPosition?,
      occurrencesCount: fields[5] as int,
      details: fields[6] as String,
      image: fields[7] as Image?,
      pathLength: fields[8] as int,
      status: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$TrailImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.position)
      ..writeByte(5)
      ..write(obj.occurrencesCount)
      ..writeByte(6)
      ..write(obj.details)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.pathLength)
      ..writeByte(9)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrailsImpl _$$TrailsImplFromJson(Map<String, dynamic> json) => _$TrailsImpl(
      trailList: (json['trailList'] as List<dynamic>?)
          ?.map((e) => Trail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrailsImplToJson(_$TrailsImpl instance) =>
    <String, dynamic>{
      'trailList': instance.trailList,
    };

_$TrailImpl _$$TrailImplFromJson(Map<String, dynamic> json) => _$TrailImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      author: json['author'] as String,
      position: json['position'] == null
          ? null
          : StartEndPosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrencesCount: (json['occurrences_count'] as num).toInt(),
      details: json['details'] as String,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      pathLength: (json['path_length'] as num).toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$TrailImplToJson(_$TrailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'author': instance.author,
      'position': instance.position,
      'occurrences_count': instance.occurrencesCount,
      'details': instance.details,
      'image': instance.image,
      'path_length': instance.pathLength,
      'status': instance.status,
    };
