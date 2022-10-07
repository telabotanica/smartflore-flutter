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

Taxon _$TaxonFromJson(Map<String, dynamic> json) {
  return _Taxon.fromJson(json);
}

/// @nodoc
mixin _$Taxon {
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  String get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  String get fullScientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_full_scientific_name')
  @HiveField(2)
  String get htmlFullScientificName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get genus => throw _privateConstructorUsedError;
  @HiveField(4)
  String get family => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxon_repository')
  @HiveField(5)
  String get taxonRepository => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_id')
  @HiveField(6)
  int get nameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'taxonomic_id')
  @HiveField(7)
  int get taxonomicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vernacular_names')
  @HiveField(8)
  List<String> get vernacularNames => throw _privateConstructorUsedError;
  @HiveField(9)
  List<TabAPI> get tabs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonCopyWith<Taxon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonCopyWith<$Res> {
  factory $TaxonCopyWith(Taxon value, $Res Function(Taxon) then) =
      _$TaxonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          String scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
      @HiveField(2)
          String htmlFullScientificName,
      @HiveField(3)
          String genus,
      @HiveField(4)
          String family,
      @JsonKey(name: 'taxon_repository')
      @HiveField(5)
          String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(6)
          int nameId,
      @JsonKey(name: 'taxonomic_id')
      @HiveField(7)
          int taxonomicId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(8)
          List<String> vernacularNames,
      @HiveField(9)
          List<TabAPI> tabs});
}

/// @nodoc
class _$TaxonCopyWithImpl<$Res> implements $TaxonCopyWith<$Res> {
  _$TaxonCopyWithImpl(this._value, this._then);

  final Taxon _value;
  // ignore: unused_field
  final $Res Function(Taxon) _then;

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
    Object? tabs = freezed,
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
      tabs: tabs == freezed
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabAPI>,
    ));
  }
}

/// @nodoc
abstract class _$$_TaxonCopyWith<$Res> implements $TaxonCopyWith<$Res> {
  factory _$$_TaxonCopyWith(_$_Taxon value, $Res Function(_$_Taxon) then) =
      __$$_TaxonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          String scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
      @HiveField(2)
          String htmlFullScientificName,
      @HiveField(3)
          String genus,
      @HiveField(4)
          String family,
      @JsonKey(name: 'taxon_repository')
      @HiveField(5)
          String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(6)
          int nameId,
      @JsonKey(name: 'taxonomic_id')
      @HiveField(7)
          int taxonomicId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(8)
          List<String> vernacularNames,
      @HiveField(9)
          List<TabAPI> tabs});
}

/// @nodoc
class __$$_TaxonCopyWithImpl<$Res> extends _$TaxonCopyWithImpl<$Res>
    implements _$$_TaxonCopyWith<$Res> {
  __$$_TaxonCopyWithImpl(_$_Taxon _value, $Res Function(_$_Taxon) _then)
      : super(_value, (v) => _then(v as _$_Taxon));

  @override
  _$_Taxon get _value => super._value as _$_Taxon;

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
    Object? tabs = freezed,
  }) {
    return _then(_$_Taxon(
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
      tabs: tabs == freezed
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabAPI>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 30, adapterName: 'TaxonAdapter')
class _$_Taxon implements _Taxon {
  const _$_Taxon(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          required this.scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          required this.fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
      @HiveField(2)
          required this.htmlFullScientificName,
      @HiveField(3)
          required this.genus,
      @HiveField(4)
          required this.family,
      @JsonKey(name: 'taxon_repository')
      @HiveField(5)
          required this.taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(6)
          required this.nameId,
      @JsonKey(name: 'taxonomic_id')
      @HiveField(7)
          required this.taxonomicId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(8)
          required final List<String> vernacularNames,
      @HiveField(9)
          required final List<TabAPI> tabs})
      : _vernacularNames = vernacularNames,
        _tabs = tabs;

  factory _$_Taxon.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonFromJson(json);

  @override
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  final String scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  final String fullScientificName;
  @override
  @JsonKey(name: 'html_full_scientific_name')
  @HiveField(2)
  final String htmlFullScientificName;
  @override
  @HiveField(3)
  final String genus;
  @override
  @HiveField(4)
  final String family;
  @override
  @JsonKey(name: 'taxon_repository')
  @HiveField(5)
  final String taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  @HiveField(6)
  final int nameId;
  @override
  @JsonKey(name: 'taxonomic_id')
  @HiveField(7)
  final int taxonomicId;
  final List<String> _vernacularNames;
  @override
  @JsonKey(name: 'vernacular_names')
  @HiveField(8)
  List<String> get vernacularNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vernacularNames);
  }

  final List<TabAPI> _tabs;
  @override
  @HiveField(9)
  List<TabAPI> get tabs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  @override
  String toString() {
    return 'Taxon(scientificName: $scientificName, fullScientificName: $fullScientificName, htmlFullScientificName: $htmlFullScientificName, genus: $genus, family: $family, taxonRepository: $taxonRepository, nameId: $nameId, taxonomicId: $taxonomicId, vernacularNames: $vernacularNames, tabs: $tabs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Taxon &&
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
            const DeepCollectionEquality().equals(other._tabs, _tabs));
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
      const DeepCollectionEquality().hash(_tabs));

  @JsonKey(ignore: true)
  @override
  _$$_TaxonCopyWith<_$_Taxon> get copyWith =>
      __$$_TaxonCopyWithImpl<_$_Taxon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonToJson(
      this,
    );
  }
}

abstract class _Taxon implements Taxon {
  const factory _Taxon(
      {@JsonKey(name: 'scientific_name')
      @HiveField(0)
          required final String scientificName,
      @JsonKey(name: 'full_scientific_name')
      @HiveField(1)
          required final String fullScientificName,
      @JsonKey(name: 'html_full_scientific_name')
      @HiveField(2)
          required final String htmlFullScientificName,
      @HiveField(3)
          required final String genus,
      @HiveField(4)
          required final String family,
      @JsonKey(name: 'taxon_repository')
      @HiveField(5)
          required final String taxonRepository,
      @JsonKey(name: 'name_id')
      @HiveField(6)
          required final int nameId,
      @JsonKey(name: 'taxonomic_id')
      @HiveField(7)
          required final int taxonomicId,
      @JsonKey(name: 'vernacular_names')
      @HiveField(8)
          required final List<String> vernacularNames,
      @HiveField(9)
          required final List<TabAPI> tabs}) = _$_Taxon;

  factory _Taxon.fromJson(Map<String, dynamic> json) = _$_Taxon.fromJson;

  @override
  @JsonKey(name: 'scientific_name')
  @HiveField(0)
  String get scientificName;
  @override
  @JsonKey(name: 'full_scientific_name')
  @HiveField(1)
  String get fullScientificName;
  @override
  @JsonKey(name: 'html_full_scientific_name')
  @HiveField(2)
  String get htmlFullScientificName;
  @override
  @HiveField(3)
  String get genus;
  @override
  @HiveField(4)
  String get family;
  @override
  @JsonKey(name: 'taxon_repository')
  @HiveField(5)
  String get taxonRepository;
  @override
  @JsonKey(name: 'name_id')
  @HiveField(6)
  int get nameId;
  @override
  @JsonKey(name: 'taxonomic_id')
  @HiveField(7)
  int get taxonomicId;
  @override
  @JsonKey(name: 'vernacular_names')
  @HiveField(8)
  List<String> get vernacularNames;
  @override
  @HiveField(9)
  List<TabAPI> get tabs;
  @override
  @JsonKey(ignore: true)
  _$$_TaxonCopyWith<_$_Taxon> get copyWith =>
      throw _privateConstructorUsedError;
}

TabAPI _$TabAPIFromJson(Map<String, dynamic> json) {
  return _TabAPI.fromJson(json);
}

/// @nodoc
mixin _$TabAPI {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get type => throw _privateConstructorUsedError;
  @HiveField(2)
  String get icon => throw _privateConstructorUsedError;
  @HiveField(3)
  List<SectionAPI>? get sections => throw _privateConstructorUsedError;
  @HiveField(4)
  List<ImageAPI>? get images => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabAPICopyWith<TabAPI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabAPICopyWith<$Res> {
  factory $TabAPICopyWith(TabAPI value, $Res Function(TabAPI) then) =
      _$TabAPICopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String type,
      @HiveField(2) String icon,
      @HiveField(3) List<SectionAPI>? sections,
      @HiveField(4) List<ImageAPI>? images,
      @HiveField(5) String? url});
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
    Object? icon = freezed,
    Object? sections = freezed,
    Object? images = freezed,
    Object? url = freezed,
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
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionAPI>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageAPI>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TabAPICopyWith<$Res> implements $TabAPICopyWith<$Res> {
  factory _$$_TabAPICopyWith(_$_TabAPI value, $Res Function(_$_TabAPI) then) =
      __$$_TabAPICopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String type,
      @HiveField(2) String icon,
      @HiveField(3) List<SectionAPI>? sections,
      @HiveField(4) List<ImageAPI>? images,
      @HiveField(5) String? url});
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
    Object? icon = freezed,
    Object? sections = freezed,
    Object? images = freezed,
    Object? url = freezed,
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
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionAPI>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageAPI>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 31, adapterName: 'TabAPIAdapter')
class _$_TabAPI implements _TabAPI {
  const _$_TabAPI(
      {@HiveField(0) required this.title,
      @HiveField(1) required this.type,
      @HiveField(2) required this.icon,
      @HiveField(3) final List<SectionAPI>? sections,
      @HiveField(4) final List<ImageAPI>? images,
      @HiveField(5) this.url})
      : _sections = sections,
        _images = images;

  factory _$_TabAPI.fromJson(Map<String, dynamic> json) =>
      _$$_TabAPIFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String type;
  @override
  @HiveField(2)
  final String icon;
  final List<SectionAPI>? _sections;
  @override
  @HiveField(3)
  List<SectionAPI>? get sections {
    final value = _sections;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageAPI>? _images;
  @override
  @HiveField(4)
  List<ImageAPI>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final String? url;

  @override
  String toString() {
    return 'TabAPI(title: $title, type: $type, icon: $icon, sections: $sections, images: $images, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabAPI &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(url));

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
      {@HiveField(0) required final String title,
      @HiveField(1) required final String type,
      @HiveField(2) required final String icon,
      @HiveField(3) final List<SectionAPI>? sections,
      @HiveField(4) final List<ImageAPI>? images,
      @HiveField(5) final String? url}) = _$_TabAPI;

  factory _TabAPI.fromJson(Map<String, dynamic> json) = _$_TabAPI.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get type;
  @override
  @HiveField(2)
  String get icon;
  @override
  @HiveField(3)
  List<SectionAPI>? get sections;
  @override
  @HiveField(4)
  List<ImageAPI>? get images;
  @override
  @HiveField(5)
  String? get url;
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
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;
  @HiveField(2)
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageAPICopyWith<ImageAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAPICopyWith<$Res> {
  factory $ImageAPICopyWith(ImageAPI value, $Res Function(ImageAPI) then) =
      _$ImageAPICopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String url,
      @HiveField(2) String author});
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
    Object? author = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String url,
      @HiveField(2) String author});
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
    Object? author = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 32, adapterName: 'ImageAPIAdapter')
class _$_ImageAPI implements _ImageAPI {
  const _$_ImageAPI(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.url,
      @HiveField(2) required this.author});

  factory _$_ImageAPI.fromJson(Map<String, dynamic> json) =>
      _$$_ImageAPIFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String url;
  @override
  @HiveField(2)
  final String author;

  @override
  String toString() {
    return 'ImageAPI(id: $id, url: $url, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageAPI &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(author));

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
  const factory _ImageAPI(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String url,
      @HiveField(2) required final String author}) = _$_ImageAPI;

  factory _ImageAPI.fromJson(Map<String, dynamic> json) = _$_ImageAPI.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get url;
  @override
  @HiveField(2)
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_ImageAPICopyWith<_$_ImageAPI> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionAPI _$SectionAPIFromJson(Map<String, dynamic> json) {
  return _SectionAPI.fromJson(json);
}

/// @nodoc
mixin _$SectionAPI {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
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
  $Res call({@HiveField(0) String title, @HiveField(1) String text});
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
@HiveType(typeId: 33, adapterName: 'SectionAPIAdapter')
class _$_SectionAPI implements _SectionAPI {
  const _$_SectionAPI(
      {@HiveField(0) required this.title, @HiveField(1) required this.text});

  factory _$_SectionAPI.fromJson(Map<String, dynamic> json) =>
      _$$_SectionAPIFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
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
      {@HiveField(0) required final String title,
      @HiveField(1) required final String text}) = _$_SectionAPI;

  factory _SectionAPI.fromJson(Map<String, dynamic> json) =
      _$_SectionAPI.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SectionAPICopyWith<_$_SectionAPI> get copyWith =>
      throw _privateConstructorUsedError;
}
