// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrailDetails _$$_TrailDetailsFromJson(Map<String, dynamic> json) =>
    _$_TrailDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      author: json['author'] as String,
      position:
          StartEndPosition.fromJson(json['position'] as Map<String, dynamic>),
      startPosition: const LatLngConverter().fromJson(json['start_position']),
      occurrences: (json['occurrences'] as List<dynamic>)
          .map((e) => Occurrence.fromJson(e as Map<String, dynamic>))
          .toList(),
      occurrencesCount: json['occurrences_count'] as int,
      details: json['details'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      path: Path.fromJson(json['path'] as Map<String, dynamic>),
      pathLength: json['path_length'] as int,
    );

Map<String, dynamic> _$$_TrailDetailsToJson(_$_TrailDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'display_name': instance.displayName,
      'author': instance.author,
      'position': instance.position,
      'start_position': const LatLngConverter().toJson(instance.startPosition),
      'occurrences': instance.occurrences,
      'occurrences_count': instance.occurrencesCount,
      'details': instance.details,
      'image': instance.image,
      'path': instance.path,
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

_$_Occurrence _$$_OccurrenceFromJson(Map<String, dynamic> json) =>
    _$_Occurrence(
      position: const LatLngConverter().fromJson(json['position']),
      taxon: Taxon.fromJson(json['taxon'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OccurrenceToJson(_$_Occurrence instance) =>
    <String, dynamic>{
      'position': const LatLngConverter().toJson(instance.position),
      'taxon': instance.taxon,
      'images': instance.images,
    };

_$_Taxon _$$_TaxonFromJson(Map<String, dynamic> json) => _$_Taxon(
      species: json['species'] as String,
      author: json['author'] as String,
      genus: json['genus'] as String,
      family: json['family'] as String,
      referential: json['referential'] as String,
      nameId: json['name_id'] as int,
    );

Map<String, dynamic> _$$_TaxonToJson(_$_Taxon instance) => <String, dynamic>{
      'species': instance.species,
      'author': instance.author,
      'genus': instance.genus,
      'family': instance.family,
      'referential': instance.referential,
      'name_id': instance.nameId,
    };

_$_Path _$$_PathFromJson(Map<String, dynamic> json) => _$_Path(
      type: json['type'] as String,
      coordinates:
          const LatLngListConverter().fromJson(json['coordinates'] as List),
    );

Map<String, dynamic> _$$_PathToJson(_$_Path instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': const LatLngListConverter().toJson(instance.coordinates),
    };

_$_StartEndPosition _$$_StartEndPositionFromJson(Map<String, dynamic> json) =>
    _$_StartEndPosition(
      start: const LatLngConverter().fromJson(json['start']),
      end: const LatLngConverter().fromJson(json['end']),
    );

Map<String, dynamic> _$$_StartEndPositionToJson(_$_StartEndPosition instance) =>
    <String, dynamic>{
      'start': const LatLngConverter().toJson(instance.start),
      'end': const LatLngConverter().toJson(instance.end),
    };
