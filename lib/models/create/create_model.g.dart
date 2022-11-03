// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreateTrailAdapter extends TypeAdapter<_$_CreateTrail> {
  @override
  final int typeId = 50;

  @override
  _$_CreateTrail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CreateTrail(
      name: fields[0] as String,
      position: fields[1] as SavePosition,
      occurrences: (fields[2] as List).cast<SaveOccurrence>(),
      path: fields[3] as Path,
      prm: fields[5] as int,
      bestSeason: (fields[6] as List).cast<bool>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_CreateTrail obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.position)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(5)
      ..write(obj.prm)
      ..writeByte(2)
      ..write(obj.occurrences)
      ..writeByte(6)
      ..write(obj.bestSeason);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateTrailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaveOccurrenceAdapter extends TypeAdapter<_$_SaveOccurrence> {
  @override
  final int typeId = 51;

  @override
  _$_SaveOccurrence read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SaveOccurrence(
      position: fields[0] as LatLng,
      taxon_id: fields[1] as String,
      image_id: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SaveOccurrence obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.position)
      ..writeByte(1)
      ..write(obj.taxon_id)
      ..writeByte(2)
      ..write(obj.image_id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveOccurrenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SavePositionAdapter extends TypeAdapter<_$_SavePosition> {
  @override
  final int typeId = 55;

  @override
  _$_SavePosition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SavePosition(
      start: fields[0] as LatLng,
      end: fields[1] as LatLng,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SavePosition obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.start)
      ..writeByte(1)
      ..write(obj.end);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavePositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTrail _$$_CreateTrailFromJson(Map<String, dynamic> json) =>
    _$_CreateTrail(
      name: json['name'] as String,
      position: SavePosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrences: (json['occurrences'] as List<dynamic>?)
              ?.map((e) => SaveOccurrence.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      path: json['path'] == null
          ? const Path()
          : Path.fromJson(json['path'] as Map<String, dynamic>),
      prm: json['prm'] as int? ?? -1,
      bestSeason: (json['best_season'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [false, false, false, false],
    );

Map<String, dynamic> _$$_CreateTrailToJson(_$_CreateTrail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'occurrences': instance.occurrences,
      'path': instance.path,
      'prm': instance.prm,
      'best_season': instance.bestSeason,
    };

_$_SaveOccurrence _$$_SaveOccurrenceFromJson(Map<String, dynamic> json) =>
    _$_SaveOccurrence(
      position: const LatLngConverter().fromJson(json['position']),
      taxon_id: json['taxon_id'] as String? ?? '',
      image_id: json['image_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_SaveOccurrenceToJson(_$_SaveOccurrence instance) =>
    <String, dynamic>{
      'position': const LatLngConverter().toJson(instance.position),
      'taxon_id': instance.taxon_id,
      'image_id': instance.image_id,
    };

_$_SavePosition _$$_SavePositionFromJson(Map<String, dynamic> json) =>
    _$_SavePosition(
      start: const LatLngConverter().fromJson(json['start']),
      end: const LatLngConverter().fromJson(json['end']),
    );

Map<String, dynamic> _$$_SavePositionToJson(_$_SavePosition instance) =>
    <String, dynamic>{
      'start': const LatLngConverter().toJson(instance.start),
      'end': const LatLngConverter().toJson(instance.end),
    };
