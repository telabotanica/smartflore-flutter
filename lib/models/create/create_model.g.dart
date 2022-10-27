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
      author: fields[1] as String,
      position: fields[2] as SavePosition,
      occurrences: (fields[3] as List).cast<SaveOccurrence>(),
      path: fields[4] as SavePath,
      pathLength: fields[5] as int,
      prm: fields[6] as int,
      bestSeason: (fields[7] as List).cast<bool>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_CreateTrail obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.position)
      ..writeByte(4)
      ..write(obj.path)
      ..writeByte(5)
      ..write(obj.pathLength)
      ..writeByte(6)
      ..write(obj.prm)
      ..writeByte(3)
      ..write(obj.occurrences)
      ..writeByte(7)
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
      taxon: fields[1] as SaveTaxon,
      images: (fields[2] as List).cast<UploadImage>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_SaveOccurrence obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.position)
      ..writeByte(1)
      ..write(obj.taxon)
      ..writeByte(2)
      ..write(obj.images);
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

class UploadImageAdapter extends TypeAdapter<_$_UploadImage> {
  @override
  final int typeId = 52;

  @override
  _$_UploadImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UploadImage(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UploadImage obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UploadImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaveTaxonAdapter extends TypeAdapter<_$_SaveTaxon> {
  @override
  final int typeId = 53;

  @override
  _$_SaveTaxon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SaveTaxon(
      nameId: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SaveTaxon obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.nameId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveTaxonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SavePathAdapter extends TypeAdapter<_$_SavePath> {
  @override
  final int typeId = 54;

  @override
  _$_SavePath read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SavePath(
      coordinates: (fields[0] as List).cast<LatLng>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_SavePath obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.coordinates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavePathAdapter &&
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
      author: json['author'] as String,
      position: SavePosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => SaveOccurrence.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: SavePath.fromJson(json['path'] as Map<String, dynamic>),
      pathLength: json['path_length'] as int,
      prm: json['prm'] as int,
      bestSeason:
          (json['best_season'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$_CreateTrailToJson(_$_CreateTrail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'position': instance.position,
      'occurrences': instance.occurrences,
      'path': instance.path,
      'path_length': instance.pathLength,
      'prm': instance.prm,
      'best_season': instance.bestSeason,
    };

_$_SaveOccurrence _$$_SaveOccurrenceFromJson(Map<String, dynamic> json) =>
    _$_SaveOccurrence(
      position: const LatLngConverter().fromJson(json['position']),
      taxon: SaveTaxon.fromJson(json['taxon'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => UploadImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SaveOccurrenceToJson(_$_SaveOccurrence instance) =>
    <String, dynamic>{
      'position': const LatLngConverter().toJson(instance.position),
      'taxon': instance.taxon,
      'images': instance.images,
    };

_$_UploadImage _$$_UploadImageFromJson(Map<String, dynamic> json) =>
    _$_UploadImage(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_UploadImageToJson(_$_UploadImage instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_SaveTaxon _$$_SaveTaxonFromJson(Map<String, dynamic> json) => _$_SaveTaxon(
      nameId: json['name_id'] as int,
    );

Map<String, dynamic> _$$_SaveTaxonToJson(_$_SaveTaxon instance) =>
    <String, dynamic>{
      'name_id': instance.nameId,
    };

_$_SavePath _$$_SavePathFromJson(Map<String, dynamic> json) => _$_SavePath(
      coordinates:
          const LatLngListConverter().fromJson(json['coordinates'] as List),
    );

Map<String, dynamic> _$$_SavePathToJson(_$_SavePath instance) =>
    <String, dynamic>{
      'coordinates': const LatLngListConverter().toJson(instance.coordinates),
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
