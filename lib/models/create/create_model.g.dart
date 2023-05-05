// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OccurenceCreateAdapter extends TypeAdapter<OccurrenceCreate> {
  @override
  final int typeId = 51;

  @override
  OccurrenceCreate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OccurrenceCreate(
      position: fields[0] as LatLng,
      scientificName: fields[1] as String?,
      nameId: fields[2] as int,
      taxonRepository: fields[3] as String,
      imageId: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OccurrenceCreate obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.position)
      ..writeByte(1)
      ..write(obj.scientificName)
      ..writeByte(2)
      ..write(obj.nameId)
      ..writeByte(3)
      ..write(obj.taxonRepository)
      ..writeByte(4)
      ..write(obj.imageId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OccurenceCreateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      occurrences: (fields[2] as List).cast<Occurrence>(),
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
              ?.map((e) => Occurrence.fromJson(e as Map<String, dynamic>))
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

_$_OccurrenceCreate _$$_OccurrenceCreateFromJson(Map<String, dynamic> json) =>
    _$_OccurrenceCreate(
      position: const LatLngConverter().fromJson(json['position']),
      scientificName: json['scientific_name'] as String?,
      nameId: json['name_id'] as int,
      taxonRepository: json['taxon_repository'] as String,
      imageId: json['image_id'] as String?,
    );

Map<String, dynamic> _$$_OccurrenceCreateToJson(_$_OccurrenceCreate instance) =>
    <String, dynamic>{
      'position': const LatLngConverter().toJson(instance.position),
      'scientific_name': instance.scientificName,
      'name_id': instance.nameId,
      'taxon_repository': instance.taxonRepository,
      'image_id': instance.imageId,
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
