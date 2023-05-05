// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trails_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrailsAdapter extends TypeAdapter<_$_Trails> {
  @override
  final int typeId = 1;

  @override
  _$_Trails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Trails(
      trailList: (fields[0] as List?)?.cast<Trail>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Trails obj) {
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

class TrailAdapter extends TypeAdapter<_$_Trail> {
  @override
  final int typeId = 2;

  @override
  _$_Trail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Trail(
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
  void write(BinaryWriter writer, _$_Trail obj) {
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

_$_Trails _$$_TrailsFromJson(Map<String, dynamic> json) => _$_Trails(
      trailList: (json['trailList'] as List<dynamic>?)
          ?.map((e) => Trail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrailsToJson(_$_Trails instance) => <String, dynamic>{
      'trailList': instance.trailList,
    };

_$_Trail _$$_TrailFromJson(Map<String, dynamic> json) => _$_Trail(
      id: json['id'] as int,
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      author: json['author'] as String,
      position: json['position'] == null
          ? null
          : StartEndPosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrencesCount: json['occurrences_count'] as int,
      details: json['details'] as String,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      pathLength: json['path_length'] as int,
      status: json['status'] as String?,
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
      'status': instance.status,
    };
