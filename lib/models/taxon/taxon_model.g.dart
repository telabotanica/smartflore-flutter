// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxonAdapter extends TypeAdapter<_$_Taxon> {
  @override
  final int typeId = 30;

  @override
  _$_Taxon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Taxon(
      scientificName: fields[0] as String,
      fullScientificName: fields[1] as String,
      htmlFullScientificName: fields[2] as String,
      genus: fields[3] as String,
      family: fields[4] as String,
      taxonRepository: fields[5] as String,
      nameId: fields[6] as int,
      taxonomicId: fields[7] as int,
      vernacularNames: (fields[8] as List).cast<String>(),
      tabs: (fields[9] as List).cast<TabAPI>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Taxon obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.scientificName)
      ..writeByte(1)
      ..write(obj.fullScientificName)
      ..writeByte(2)
      ..write(obj.htmlFullScientificName)
      ..writeByte(3)
      ..write(obj.genus)
      ..writeByte(4)
      ..write(obj.family)
      ..writeByte(5)
      ..write(obj.taxonRepository)
      ..writeByte(6)
      ..write(obj.nameId)
      ..writeByte(7)
      ..write(obj.taxonomicId)
      ..writeByte(8)
      ..write(obj.vernacularNames)
      ..writeByte(9)
      ..write(obj.tabs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TabAPIAdapter extends TypeAdapter<_$_TabAPI> {
  @override
  final int typeId = 31;

  @override
  _$_TabAPI read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TabAPI(
      title: fields[0] as String,
      type: fields[1] as String,
      icon: fields[2] as String,
      sections: (fields[3] as List?)?.cast<SectionAPI>(),
      images: (fields[4] as List?)?.cast<ImageAPI>(),
      url: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TabAPI obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.sections)
      ..writeByte(4)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TabAPIAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageAPIAdapter extends TypeAdapter<_$_ImageAPI> {
  @override
  final int typeId = 32;

  @override
  _$_ImageAPI read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ImageAPI(
      id: fields[0] as int,
      url: fields[1] as String,
      author: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ImageAPI obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.author);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageAPIAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SectionAPIAdapter extends TypeAdapter<_$_SectionAPI> {
  @override
  final int typeId = 33;

  @override
  _$_SectionAPI read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SectionAPI(
      title: fields[0] as String,
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SectionAPI obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SectionAPIAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Taxon _$$_TaxonFromJson(Map<String, dynamic> json) => _$_Taxon(
      scientificName: json['scientific_name'] as String,
      fullScientificName: json['full_scientific_name'] as String,
      htmlFullScientificName: json['html_full_scientific_name'] as String,
      genus: json['genus'] as String,
      family: json['family'] as String,
      taxonRepository: json['taxon_repository'] as String,
      nameId: json['name_id'] as int,
      taxonomicId: json['taxonomic_id'] as int,
      vernacularNames: (json['vernacular_names'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tabs: (json['tabs'] as List<dynamic>)
          .map((e) => TabAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TaxonToJson(_$_Taxon instance) => <String, dynamic>{
      'scientific_name': instance.scientificName,
      'full_scientific_name': instance.fullScientificName,
      'html_full_scientific_name': instance.htmlFullScientificName,
      'genus': instance.genus,
      'family': instance.family,
      'taxon_repository': instance.taxonRepository,
      'name_id': instance.nameId,
      'taxonomic_id': instance.taxonomicId,
      'vernacular_names': instance.vernacularNames,
      'tabs': instance.tabs,
    };

_$_TabAPI _$$_TabAPIFromJson(Map<String, dynamic> json) => _$_TabAPI(
      title: json['title'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageAPI.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_TabAPIToJson(_$_TabAPI instance) => <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'icon': instance.icon,
      'sections': instance.sections,
      'images': instance.images,
      'url': instance.url,
    };

_$_ImageAPI _$$_ImageAPIFromJson(Map<String, dynamic> json) => _$_ImageAPI(
      id: json['id'] as int,
      url: json['url'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$_ImageAPIToJson(_$_ImageAPI instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'author': instance.author,
    };

_$_SectionAPI _$$_SectionAPIFromJson(Map<String, dynamic> json) =>
    _$_SectionAPI(
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_SectionAPIToJson(_$_SectionAPI instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };
