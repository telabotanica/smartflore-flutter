// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrailDetailAdapter extends TypeAdapter<_$TrailDetailsImpl> {
  @override
  final int typeId = 10;

  @override
  _$TrailDetailsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TrailDetailsImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      displayName: fields[2] as String,
      author: fields[3] as String,
      position: fields[4] as StartEndPosition,
      occurrences: (fields[5] as List).cast<Occurrence>(),
      occurrencesCount: fields[6] as int,
      image: fields[7] as Image,
      path: fields[8] as Path,
      pathLength: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$TrailDetailsImpl obj) {
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
      ..writeByte(6)
      ..write(obj.occurrencesCount)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.path)
      ..writeByte(9)
      ..write(obj.pathLength)
      ..writeByte(5)
      ..write(obj.occurrences);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrailDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageAdapter extends TypeAdapter<_$ImageImpl> {
  @override
  final int typeId = 11;

  @override
  _$ImageImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ImageImpl(
      id: fields[0] as int,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ImageImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OccurenceAdapter extends TypeAdapter<_$OccurrenceImpl> {
  @override
  final int typeId = 12;

  @override
  _$OccurrenceImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OccurrenceImpl(
      position: fields[0] as LatLng,
      taxon: fields[1] as TaxonLight,
      images: (fields[2] as List).cast<Image>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$OccurrenceImpl obj) {
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
      other is OccurenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrailTaxonAdapter extends TypeAdapter<_$TaxonLightImpl> {
  @override
  final int typeId = 13;

  @override
  _$TaxonLightImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TaxonLightImpl(
      scientificName: fields[0] as String?,
      fullScientificName: fields[1] as String,
      taxonRepository: fields[2] as String,
      nameId: fields[3] as int,
      vernacularNames: (fields[4] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$TaxonLightImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.scientificName)
      ..writeByte(1)
      ..write(obj.fullScientificName)
      ..writeByte(2)
      ..write(obj.taxonRepository)
      ..writeByte(3)
      ..write(obj.nameId)
      ..writeByte(4)
      ..write(obj.vernacularNames);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrailTaxonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PathAdapter extends TypeAdapter<_$PathImpl> {
  @override
  final int typeId = 14;

  @override
  _$PathImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PathImpl(
      type: fields[0] as String,
      coordinates: (fields[1] as List).cast<LatLng>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$PathImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.coordinates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PathAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StartEndPositionAdapter extends TypeAdapter<_$StartEndPositionImpl> {
  @override
  final int typeId = 15;

  @override
  _$StartEndPositionImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StartEndPositionImpl(
      start: fields[0] as LatLng,
      end: fields[1] as LatLng,
    );
  }

  @override
  void write(BinaryWriter writer, _$StartEndPositionImpl obj) {
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
      other is StartEndPositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrailDetailsImpl _$$TrailDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TrailDetailsImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      author: json['author'] as String,
      position:
          StartEndPosition.fromJson(json['position'] as Map<String, dynamic>),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => Occurrence.fromJson(e as Map<String, dynamic>))
          .toList(),
      occurrencesCount: (json['occurrences_count'] as num).toInt(),
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      path: Path.fromJson(json['path'] as Map<String, dynamic>),
      pathLength: (json['path_length'] as num).toInt(),
    );

Map<String, dynamic> _$$TrailDetailsImplToJson(_$TrailDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'author': instance.author,
      'position': instance.position,
      'occurrences': instance.occurrences,
      'occurrences_count': instance.occurrencesCount,
      'image': instance.image,
      'path': instance.path,
      'path_length': instance.pathLength,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$OccurrenceImpl _$$OccurrenceImplFromJson(Map<String, dynamic> json) =>
    _$OccurrenceImpl(
      position: const LatLngConverter().fromJson(json['position']),
      taxon: TaxonLight.fromJson(json['taxon'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OccurrenceImplToJson(_$OccurrenceImpl instance) =>
    <String, dynamic>{
      'position': const LatLngConverter().toJson(instance.position),
      'taxon': instance.taxon,
      'images': instance.images,
    };

_$TaxonLightImpl _$$TaxonLightImplFromJson(Map<String, dynamic> json) =>
    _$TaxonLightImpl(
      scientificName: json['scientific_name'] as String?,
      fullScientificName: json['full_scientific_name'] as String,
      taxonRepository: json['taxon_repository'] as String,
      nameId: (json['name_id'] as num).toInt(),
      vernacularNames: (json['vernacular_names'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TaxonLightImplToJson(_$TaxonLightImpl instance) =>
    <String, dynamic>{
      'scientific_name': instance.scientificName,
      'full_scientific_name': instance.fullScientificName,
      'taxon_repository': instance.taxonRepository,
      'name_id': instance.nameId,
      'vernacular_names': instance.vernacularNames,
    };

_$PathImpl _$$PathImplFromJson(Map<String, dynamic> json) => _$PathImpl(
      type: json['type'] as String? ?? '',
      coordinates: json['coordinates'] == null
          ? const []
          : const LatLngListConverter().fromJson(json['coordinates'] as List),
    );

Map<String, dynamic> _$$PathImplToJson(_$PathImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': const LatLngListConverter().toJson(instance.coordinates),
    };

_$StartEndPositionImpl _$$StartEndPositionImplFromJson(
        Map<String, dynamic> json) =>
    _$StartEndPositionImpl(
      start: const LatLngConverter().fromJson(json['start']),
      end: const LatLngConverter().fromJson(json['end']),
    );

Map<String, dynamic> _$$StartEndPositionImplToJson(
        _$StartEndPositionImpl instance) =>
    <String, dynamic>{
      'start': const LatLngConverter().toJson(instance.start),
      'end': const LatLngConverter().toJson(instance.end),
    };
