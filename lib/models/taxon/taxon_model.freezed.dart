// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'taxon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxonAPI _$TaxonAPIFromJson(Map<String, dynamic> json) {
  return _TaxonAPI.fromJson(json);
}

/// @nodoc
mixin _$TaxonAPI {
  @JsonKey(name: 'scientific_name')
  String get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_scientific_name')
  String get fullScientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_full_scientific_name')
  String get htmlFullScientificName => throw _privateConstructorUsedError;
  String get genus => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxon_repository')
  String get taxonRepository => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_id')
  int get nameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxonomic_id')
  int get taxonomicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vernacular_names')
  List<String> get vernacularNames => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia_url')
  String get wikipediaUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_url')
  String get mapUrl => throw _privateConstructorUsedError;
  CardAPI get card => throw _privateConstructorUsedError;
  List<ImageAPI> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonAPICopyWith<TaxonAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonAPICopyWith<$Res> {
  factory $TaxonAPICopyWith(TaxonAPI value, $Res Function(TaxonAPI) then) =
      _$TaxonAPICopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'scientific_name') String scientificName,
      @JsonKey(name: 'full_scientific_name') String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name') String htmlFullScientificName,
      String genus,
      String family,
      @JsonKey(name: 'taxon_repository') String taxonRepository,
      @JsonKey(name: 'name_id') int nameId,
      @JsonKey(name: 'taxonomic_id') int taxonomicId,
      @JsonKey(name: 'vernacular_names') List<String> vernacularNames,
      @JsonKey(name: 'wikipedia_url') String wikipediaUrl,
      @JsonKey(name: 'map_url') String mapUrl,
      CardAPI card,
      List<ImageAPI> images});

  $CardAPICopyWith<$Res> get card;
}

/// @nodoc
class _$TaxonAPICopyWithImpl<$Res> implements $TaxonAPICopyWith<$Res> {
  _$TaxonAPICopyWithImpl(this._value, this._then);

  final TaxonAPI _value;
  // ignore: unused_field
  final $Res Function(TaxonAPI) _then;

  @override
  $Res call({
    Object? scientificName = freezed,
    Object? fullScientificName = freezed,
    Object? htmlFullScientificName = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? taxonRepository = freezed,
    Object? nameId = freezed,
    Object? taxonomicId = freezed,
    Object? vernacularNames = freezed,
    Object? wikipediaUrl = freezed,
    Object? mapUrl = freezed,
    Object? card = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      scientificName: scientificName == freezed
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      fullScientificName: fullScientificName == freezed
          ? _value.fullScientificName
          : fullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      htmlFullScientificName: htmlFullScientificName == freezed
          ? _value.htmlFullScientificName
          : htmlFullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      taxonRepository: taxonRepository == freezed
          ? _value.taxonRepository
          : taxonRepository // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
      taxonomicId: taxonomicId == freezed
          ? _value.taxonomicId
          : taxonomicId // ignore: cast_nullable_to_non_nullable
              as int,
      vernacularNames: vernacularNames == freezed
          ? _value.vernacularNames
          : vernacularNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wikipediaUrl: wikipediaUrl == freezed
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mapUrl: mapUrl == freezed
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String,
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardAPI,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageAPI>,
    ));
  }

  @override
  $CardAPICopyWith<$Res> get card {
    return $CardAPICopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaxonAPICopyWith<$Res> implements $TaxonAPICopyWith<$Res> {
  factory _$$_TaxonAPICopyWith(
          _$_TaxonAPI value, $Res Function(_$_TaxonAPI) then) =
      __$$_TaxonAPICopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'scientific_name') String scientificName,
      @JsonKey(name: 'full_scientific_name') String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name') String htmlFullScientificName,
      String genus,
      String family,
      @JsonKey(name: 'taxon_repository') String taxonRepository,
      @JsonKey(name: 'name_id') int nameId,
      @JsonKey(name: 'taxonomic_id') int taxonomicId,
      @JsonKey(name: 'vernacular_names') List<String> vernacularNames,
      @JsonKey(name: 'wikipedia_url') String wikipediaUrl,
      @JsonKey(name: 'map_url') String mapUrl,
      CardAPI card,
      List<ImageAPI> images});

  @override
  $CardAPICopyWith<$Res> get card;
}

/// @nodoc
class __$$_TaxonAPICopyWithImpl<$Res> extends _$TaxonAPICopyWithImpl<$Res>
    implements _$$_TaxonAPICopyWith<$Res> {
  __$$_TaxonAPICopyWithImpl(
      _$_TaxonAPI _value, $Res Function(_$_TaxonAPI) _then)
      : super(_value, (v) => _then(v as _$_TaxonAPI));

  @override
  _$_TaxonAPI get _value => super._value as _$_TaxonAPI;

  @override
  $Res call({
    Object? scientificName = freezed,
    Object? fullScientificName = freezed,
    Object? htmlFullScientificName = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? taxonRepository = freezed,
    Object? nameId = freezed,
    Object? taxonomicId = freezed,
    Object? vernacularNames = freezed,
    Object? wikipediaUrl = freezed,
    Object? mapUrl = freezed,
    Object? card = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_TaxonAPI(
      scientificName: scientificName == freezed
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      fullScientificName: fullScientificName == freezed
          ? _value.fullScientificName
          : fullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      htmlFullScientificName: htmlFullScientificName == freezed
          ? _value.htmlFullScientificName
          : htmlFullScientificName // ignore: cast_nullable_to_non_nullable
              as String,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      taxonRepository: taxonRepository == freezed
          ? _value.taxonRepository
          : taxonRepository // ignore: cast_nullable_to_non_nullable
              as String,
      nameId: nameId == freezed
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as int,
      taxonomicId: taxonomicId == freezed
          ? _value.taxonomicId
          : taxonomicId // ignore: cast_nullable_to_non_nullable
              as int,
      vernacularNames: vernacularNames == freezed
          ? _value._vernacularNames
          : vernacularNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wikipediaUrl: wikipediaUrl == freezed
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mapUrl: mapUrl == freezed
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String,
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardAPI,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageAPI>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxonAPI implements _TaxonAPI {
  const _$_TaxonAPI(
      {@JsonKey(name: 'scientific_name')
          required this.scientificName,
      @JsonKey(name: 'full_scientific_name')
          required this.fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
          required this.htmlFullScientificName,
      required this.genus,
      required this.family,
      @JsonKey(name: 'taxon_repository')
          required this.taxonRepository,
      @JsonKey(name: 'name_id')
          required this.nameId,
      @JsonKey(name: 'taxonomic_id')
          required this.taxonomicId,
      @JsonKey(name: 'vernacular_names')
          required final List<String> vernacularNames,
      @JsonKey(name: 'wikipedia_url')
          required this.wikipediaUrl,
      @JsonKey(name: 'map_url')
          required this.mapUrl,
      required this.card,
      required final List<ImageAPI> images})
      : _vernacularNames = vernacularNames,
        _images = images;

  factory _$_TaxonAPI.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonAPIFromJson(json);

  @override
  @JsonKey(name: 'scientific_name')
  final String scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  final String fullScientificName;
  @override
  @JsonKey(name: 'html_full_scientific_name')
  final String htmlFullScientificName;
  @override
  final String genus;
  @override
  final String family;
  @override
  @JsonKey(name: 'taxon_repository')
  final String taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  final int nameId;
  @override
  @JsonKey(name: 'taxonomic_id')
  final int taxonomicId;
  final List<String> _vernacularNames;
  @override
  @JsonKey(name: 'vernacular_names')
  List<String> get vernacularNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vernacularNames);
  }

  @override
  @JsonKey(name: 'wikipedia_url')
  final String wikipediaUrl;
  @override
  @JsonKey(name: 'map_url')
  final String mapUrl;
  @override
  final CardAPI card;
  final List<ImageAPI> _images;
  @override
  List<ImageAPI> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'TaxonAPI(scientificName: $scientificName, fullScientificName: $fullScientificName, htmlFullScientificName: $htmlFullScientificName, genus: $genus, family: $family, taxonRepository: $taxonRepository, nameId: $nameId, taxonomicId: $taxonomicId, vernacularNames: $vernacularNames, wikipediaUrl: $wikipediaUrl, mapUrl: $mapUrl, card: $card, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxonAPI &&
            const DeepCollectionEquality()
                .equals(other.scientificName, scientificName) &&
            const DeepCollectionEquality()
                .equals(other.fullScientificName, fullScientificName) &&
            const DeepCollectionEquality()
                .equals(other.htmlFullScientificName, htmlFullScientificName) &&
            const DeepCollectionEquality().equals(other.genus, genus) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.taxonRepository, taxonRepository) &&
            const DeepCollectionEquality().equals(other.nameId, nameId) &&
            const DeepCollectionEquality()
                .equals(other.taxonomicId, taxonomicId) &&
            const DeepCollectionEquality()
                .equals(other._vernacularNames, _vernacularNames) &&
            const DeepCollectionEquality()
                .equals(other.wikipediaUrl, wikipediaUrl) &&
            const DeepCollectionEquality().equals(other.mapUrl, mapUrl) &&
            const DeepCollectionEquality().equals(other.card, card) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scientificName),
      const DeepCollectionEquality().hash(fullScientificName),
      const DeepCollectionEquality().hash(htmlFullScientificName),
      const DeepCollectionEquality().hash(genus),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(taxonRepository),
      const DeepCollectionEquality().hash(nameId),
      const DeepCollectionEquality().hash(taxonomicId),
      const DeepCollectionEquality().hash(_vernacularNames),
      const DeepCollectionEquality().hash(wikipediaUrl),
      const DeepCollectionEquality().hash(mapUrl),
      const DeepCollectionEquality().hash(card),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_TaxonAPICopyWith<_$_TaxonAPI> get copyWith =>
      __$$_TaxonAPICopyWithImpl<_$_TaxonAPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonAPIToJson(
      this,
    );
  }
}

abstract class _TaxonAPI implements TaxonAPI {
  const factory _TaxonAPI(
      {@JsonKey(name: 'scientific_name')
          required final String scientificName,
      @JsonKey(name: 'full_scientific_name')
          required final String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
          required final String htmlFullScientificName,
      required final String genus,
      required final String family,
      @JsonKey(name: 'taxon_repository')
          required final String taxonRepository,
      @JsonKey(name: 'name_id')
          required final int nameId,
      @JsonKey(name: 'taxonomic_id')
          required final int taxonomicId,
      @JsonKey(name: 'vernacular_names')
          required final List<String> vernacularNames,
      @JsonKey(name: 'wikipedia_url')
          required final String wikipediaUrl,
      @JsonKey(name: 'map_url')
          required final String mapUrl,
      required final CardAPI card,
      required final List<ImageAPI> images}) = _$_TaxonAPI;

  factory _TaxonAPI.fromJson(Map<String, dynamic> json) = _$_TaxonAPI.fromJson;

  @override
  @JsonKey(name: 'scientific_name')
  String get scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  String get fullScientificName;
  @override
  @JsonKey(name: 'html_full_scientific_name')
  String get htmlFullScientificName;
  @override
  String get genus;
  @override
  String get family;
  @override
  @JsonKey(name: 'taxon_repository')
  String get taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  int get nameId;
  @override
  @JsonKey(name: 'taxonomic_id')
  int get taxonomicId;
  @override
  @JsonKey(name: 'vernacular_names')
  List<String> get vernacularNames;
  @override
  @JsonKey(name: 'wikipedia_url')
  String get wikipediaUrl;
  @override
  @JsonKey(name: 'map_url')
  String get mapUrl;
  @override
  CardAPI get card;
  @override
  List<ImageAPI> get images;
  @override
  @JsonKey(ignore: true)
  _$$_TaxonAPICopyWith<_$_TaxonAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

CardAPI _$CardAPIFromJson(Map<String, dynamic> json) {
  return _CardAPI.fromJson(json);
}

/// @nodoc
mixin _$CardAPI {
  List<SectionAPI> get sections => throw _privateConstructorUsedError;
  List<TabAPI> get tabs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardAPICopyWith<CardAPI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardAPICopyWith<$Res> {
  factory $CardAPICopyWith(CardAPI value, $Res Function(CardAPI) then) =
      _$CardAPICopyWithImpl<$Res>;
  $Res call({List<SectionAPI> sections, List<TabAPI> tabs});
}

/// @nodoc
class _$CardAPICopyWithImpl<$Res> implements $CardAPICopyWith<$Res> {
  _$CardAPICopyWithImpl(this._value, this._then);

  final CardAPI _value;
  // ignore: unused_field
  final $Res Function(CardAPI) _then;

  @override
  $Res call({
    Object? sections = freezed,
    Object? tabs = freezed,
  }) {
    return _then(_value.copyWith(
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionAPI>,
      tabs: tabs == freezed
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabAPI>,
    ));
  }
}

/// @nodoc
abstract class _$$_CardAPICopyWith<$Res> implements $CardAPICopyWith<$Res> {
  factory _$$_CardAPICopyWith(
          _$_CardAPI value, $Res Function(_$_CardAPI) then) =
      __$$_CardAPICopyWithImpl<$Res>;
  @override
  $Res call({List<SectionAPI> sections, List<TabAPI> tabs});
}

/// @nodoc
class __$$_CardAPICopyWithImpl<$Res> extends _$CardAPICopyWithImpl<$Res>
    implements _$$_CardAPICopyWith<$Res> {
  __$$_CardAPICopyWithImpl(_$_CardAPI _value, $Res Function(_$_CardAPI) _then)
      : super(_value, (v) => _then(v as _$_CardAPI));

  @override
  _$_CardAPI get _value => super._value as _$_CardAPI;

  @override
  $Res call({
    Object? sections = freezed,
    Object? tabs = freezed,
  }) {
    return _then(_$_CardAPI(
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionAPI>,
      tabs: tabs == freezed
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabAPI>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardAPI implements _CardAPI {
  const _$_CardAPI(
      {required final List<SectionAPI> sections,
      required final List<TabAPI> tabs})
      : _sections = sections,
        _tabs = tabs;

  factory _$_CardAPI.fromJson(Map<String, dynamic> json) =>
      _$$_CardAPIFromJson(json);

  final List<SectionAPI> _sections;
  @override
  List<SectionAPI> get sections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<TabAPI> _tabs;
  @override
  List<TabAPI> get tabs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  @override
  String toString() {
    return 'CardAPI(sections: $sections, tabs: $tabs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardAPI &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality().equals(other._tabs, _tabs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_tabs));

  @JsonKey(ignore: true)
  @override
  _$$_CardAPICopyWith<_$_CardAPI> get copyWith =>
      __$$_CardAPICopyWithImpl<_$_CardAPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardAPIToJson(
      this,
    );
  }
}

abstract class _CardAPI implements CardAPI {
  const factory _CardAPI(
      {required final List<SectionAPI> sections,
      required final List<TabAPI> tabs}) = _$_CardAPI;

  factory _CardAPI.fromJson(Map<String, dynamic> json) = _$_CardAPI.fromJson;

  @override
  List<SectionAPI> get sections;
  @override
  List<TabAPI> get tabs;
  @override
  @JsonKey(ignore: true)
  _$$_CardAPICopyWith<_$_CardAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionAPI _$SectionAPIFromJson(Map<String, dynamic> json) {
  return _SectionAPI.fromJson(json);
}

/// @nodoc
mixin _$SectionAPI {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionAPICopyWith<SectionAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionAPICopyWith<$Res> {
  factory $SectionAPICopyWith(
          SectionAPI value, $Res Function(SectionAPI) then) =
      _$SectionAPICopyWithImpl<$Res>;
  $Res call({String title, String text});
}

/// @nodoc
class _$SectionAPICopyWithImpl<$Res> implements $SectionAPICopyWith<$Res> {
  _$SectionAPICopyWithImpl(this._value, this._then);

  final SectionAPI _value;
  // ignore: unused_field
  final $Res Function(SectionAPI) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SectionAPICopyWith<$Res>
    implements $SectionAPICopyWith<$Res> {
  factory _$$_SectionAPICopyWith(
          _$_SectionAPI value, $Res Function(_$_SectionAPI) then) =
      __$$_SectionAPICopyWithImpl<$Res>;
  @override
  $Res call({String title, String text});
}

/// @nodoc
class __$$_SectionAPICopyWithImpl<$Res> extends _$SectionAPICopyWithImpl<$Res>
    implements _$$_SectionAPICopyWith<$Res> {
  __$$_SectionAPICopyWithImpl(
      _$_SectionAPI _value, $Res Function(_$_SectionAPI) _then)
      : super(_value, (v) => _then(v as _$_SectionAPI));

  @override
  _$_SectionAPI get _value => super._value as _$_SectionAPI;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_SectionAPI(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionAPI implements _SectionAPI {
  const _$_SectionAPI({required this.title, required this.text});

  factory _$_SectionAPI.fromJson(Map<String, dynamic> json) =>
      _$$_SectionAPIFromJson(json);

  @override
  final String title;
  @override
  final String text;

  @override
  String toString() {
    return 'SectionAPI(title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionAPI &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SectionAPICopyWith<_$_SectionAPI> get copyWith =>
      __$$_SectionAPICopyWithImpl<_$_SectionAPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionAPIToJson(
      this,
    );
  }
}

abstract class _SectionAPI implements SectionAPI {
  const factory _SectionAPI(
      {required final String title,
      required final String text}) = _$_SectionAPI;

  factory _SectionAPI.fromJson(Map<String, dynamic> json) =
      _$_SectionAPI.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SectionAPICopyWith<_$_SectionAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

TabAPI _$TabAPIFromJson(Map<String, dynamic> json) {
  return _TabAPI.fromJson(json);
}

/// @nodoc
mixin _$TabAPI {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabAPICopyWith<TabAPI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabAPICopyWith<$Res> {
  factory $TabAPICopyWith(TabAPI value, $Res Function(TabAPI) then) =
      _$TabAPICopyWithImpl<$Res>;
  $Res call({String title, String type});
}

/// @nodoc
class _$TabAPICopyWithImpl<$Res> implements $TabAPICopyWith<$Res> {
  _$TabAPICopyWithImpl(this._value, this._then);

  final TabAPI _value;
  // ignore: unused_field
  final $Res Function(TabAPI) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TabAPICopyWith<$Res> implements $TabAPICopyWith<$Res> {
  factory _$$_TabAPICopyWith(_$_TabAPI value, $Res Function(_$_TabAPI) then) =
      __$$_TabAPICopyWithImpl<$Res>;
  @override
  $Res call({String title, String type});
}

/// @nodoc
class __$$_TabAPICopyWithImpl<$Res> extends _$TabAPICopyWithImpl<$Res>
    implements _$$_TabAPICopyWith<$Res> {
  __$$_TabAPICopyWithImpl(_$_TabAPI _value, $Res Function(_$_TabAPI) _then)
      : super(_value, (v) => _then(v as _$_TabAPI));

  @override
  _$_TabAPI get _value => super._value as _$_TabAPI;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_TabAPI(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabAPI implements _TabAPI {
  const _$_TabAPI({required this.title, required this.type});

  factory _$_TabAPI.fromJson(Map<String, dynamic> json) =>
      _$$_TabAPIFromJson(json);

  @override
  final String title;
  @override
  final String type;

  @override
  String toString() {
    return 'TabAPI(title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabAPI &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_TabAPICopyWith<_$_TabAPI> get copyWith =>
      __$$_TabAPICopyWithImpl<_$_TabAPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabAPIToJson(
      this,
    );
  }
}

abstract class _TabAPI implements TabAPI {
  const factory _TabAPI(
      {required final String title, required final String type}) = _$_TabAPI;

  factory _TabAPI.fromJson(Map<String, dynamic> json) = _$_TabAPI.fromJson;

  @override
  String get title;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TabAPICopyWith<_$_TabAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageAPI _$ImageAPIFromJson(Map<String, dynamic> json) {
  return _ImageAPI.fromJson(json);
}

/// @nodoc
mixin _$ImageAPI {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageAPICopyWith<ImageAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAPICopyWith<$Res> {
  factory $ImageAPICopyWith(ImageAPI value, $Res Function(ImageAPI) then) =
      _$ImageAPICopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$ImageAPICopyWithImpl<$Res> implements $ImageAPICopyWith<$Res> {
  _$ImageAPICopyWithImpl(this._value, this._then);

  final ImageAPI _value;
  // ignore: unused_field
  final $Res Function(ImageAPI) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageAPICopyWith<$Res> implements $ImageAPICopyWith<$Res> {
  factory _$$_ImageAPICopyWith(
          _$_ImageAPI value, $Res Function(_$_ImageAPI) then) =
      __$$_ImageAPICopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$$_ImageAPICopyWithImpl<$Res> extends _$ImageAPICopyWithImpl<$Res>
    implements _$$_ImageAPICopyWith<$Res> {
  __$$_ImageAPICopyWithImpl(
      _$_ImageAPI _value, $Res Function(_$_ImageAPI) _then)
      : super(_value, (v) => _then(v as _$_ImageAPI));

  @override
  _$_ImageAPI get _value => super._value as _$_ImageAPI;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ImageAPI(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageAPI implements _ImageAPI {
  const _$_ImageAPI({required this.id, required this.url});

  factory _$_ImageAPI.fromJson(Map<String, dynamic> json) =>
      _$$_ImageAPIFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'ImageAPI(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageAPI &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ImageAPICopyWith<_$_ImageAPI> get copyWith =>
      __$$_ImageAPICopyWithImpl<_$_ImageAPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageAPIToJson(
      this,
    );
  }
}

abstract class _ImageAPI implements ImageAPI {
  const factory _ImageAPI({required final int id, required final String url}) =
      _$_ImageAPI;

  factory _ImageAPI.fromJson(Map<String, dynamic> json) = _$_ImageAPI.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageAPICopyWith<_$_ImageAPI> get copyWith =>
      throw _privateConstructorUsedError;
}
