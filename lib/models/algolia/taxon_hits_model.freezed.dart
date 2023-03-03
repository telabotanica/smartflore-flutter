// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxon_hits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxonHits _$TaxonHitsFromJson(Map<String, dynamic> json) {
  return _TaxonHits.fromJson(json);
}

/// @nodoc
mixin _$TaxonHits {
  List<TaxonHit> get hits => throw _privateConstructorUsedError;
  int get nbHits => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get nbPages => throw _privateConstructorUsedError;
  int get hitsPerPage => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonHitsCopyWith<TaxonHits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonHitsCopyWith<$Res> {
  factory $TaxonHitsCopyWith(TaxonHits value, $Res Function(TaxonHits) then) =
      _$TaxonHitsCopyWithImpl<$Res, TaxonHits>;
  @useResult
  $Res call(
      {List<TaxonHit> hits,
      int nbHits,
      int page,
      int nbPages,
      int hitsPerPage,
      int? nextPageKey});
}

/// @nodoc
class _$TaxonHitsCopyWithImpl<$Res, $Val extends TaxonHits>
    implements $TaxonHitsCopyWith<$Res> {
  _$TaxonHitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
    Object? nbHits = null,
    Object? page = null,
    Object? nbPages = null,
    Object? hitsPerPage = null,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<TaxonHit>,
      nbHits: null == nbHits
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: null == nbPages
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      hitsPerPage: null == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxonHitsCopyWith<$Res> implements $TaxonHitsCopyWith<$Res> {
  factory _$$_TaxonHitsCopyWith(
          _$_TaxonHits value, $Res Function(_$_TaxonHits) then) =
      __$$_TaxonHitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaxonHit> hits,
      int nbHits,
      int page,
      int nbPages,
      int hitsPerPage,
      int? nextPageKey});
}

/// @nodoc
class __$$_TaxonHitsCopyWithImpl<$Res>
    extends _$TaxonHitsCopyWithImpl<$Res, _$_TaxonHits>
    implements _$$_TaxonHitsCopyWith<$Res> {
  __$$_TaxonHitsCopyWithImpl(
      _$_TaxonHits _value, $Res Function(_$_TaxonHits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
    Object? nbHits = null,
    Object? page = null,
    Object? nbPages = null,
    Object? hitsPerPage = null,
    Object? nextPageKey = freezed,
  }) {
    return _then(_$_TaxonHits(
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<TaxonHit>,
      nbHits: null == nbHits
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: null == nbPages
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      hitsPerPage: null == hitsPerPage
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxonHits implements _TaxonHits {
  const _$_TaxonHits(
      {required final List<TaxonHit> hits,
      required this.nbHits,
      required this.page,
      required this.nbPages,
      required this.hitsPerPage,
      this.nextPageKey})
      : _hits = hits;

  factory _$_TaxonHits.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonHitsFromJson(json);

  final List<TaxonHit> _hits;
  @override
  List<TaxonHit> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  final int nbHits;
  @override
  final int page;
  @override
  final int nbPages;
  @override
  final int hitsPerPage;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'TaxonHits(hits: $hits, nbHits: $nbHits, page: $page, nbPages: $nbPages, hitsPerPage: $hitsPerPage, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxonHits &&
            const DeepCollectionEquality().equals(other._hits, _hits) &&
            (identical(other.nbHits, nbHits) || other.nbHits == nbHits) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.nbPages, nbPages) || other.nbPages == nbPages) &&
            (identical(other.hitsPerPage, hitsPerPage) ||
                other.hitsPerPage == hitsPerPage) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hits),
      nbHits,
      page,
      nbPages,
      hitsPerPage,
      nextPageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxonHitsCopyWith<_$_TaxonHits> get copyWith =>
      __$$_TaxonHitsCopyWithImpl<_$_TaxonHits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonHitsToJson(
      this,
    );
  }
}

abstract class _TaxonHits implements TaxonHits {
  const factory _TaxonHits(
      {required final List<TaxonHit> hits,
      required final int nbHits,
      required final int page,
      required final int nbPages,
      required final int hitsPerPage,
      final int? nextPageKey}) = _$_TaxonHits;

  factory _TaxonHits.fromJson(Map<String, dynamic> json) =
      _$_TaxonHits.fromJson;

  @override
  List<TaxonHit> get hits;
  @override
  int get nbHits;
  @override
  int get page;
  @override
  int get nbPages;
  @override
  int get hitsPerPage;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$$_TaxonHitsCopyWith<_$_TaxonHits> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxonHit _$TaxonHitFromJson(Map<String, dynamic> json) {
  return _TaxonHit.fromJson(json);
}

/// @nodoc
mixin _$TaxonHit {
  List<String>? get referentiels => throw _privateConstructorUsedError;
  HitBdtfx? get bdtfx => throw _privateConstructorUsedError;
  String? get objectId => throw _privateConstructorUsedError;
  @JsonKey(name: '_highlightResult')
  HighlightResult? get highlightResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxonHitCopyWith<TaxonHit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxonHitCopyWith<$Res> {
  factory $TaxonHitCopyWith(TaxonHit value, $Res Function(TaxonHit) then) =
      _$TaxonHitCopyWithImpl<$Res, TaxonHit>;
  @useResult
  $Res call(
      {List<String>? referentiels,
      HitBdtfx? bdtfx,
      String? objectId,
      @JsonKey(name: '_highlightResult') HighlightResult? highlightResult});

  $HitBdtfxCopyWith<$Res>? get bdtfx;
  $HighlightResultCopyWith<$Res>? get highlightResult;
}

/// @nodoc
class _$TaxonHitCopyWithImpl<$Res, $Val extends TaxonHit>
    implements $TaxonHitCopyWith<$Res> {
  _$TaxonHitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referentiels = freezed,
    Object? bdtfx = freezed,
    Object? objectId = freezed,
    Object? highlightResult = freezed,
  }) {
    return _then(_value.copyWith(
      referentiels: freezed == referentiels
          ? _value.referentiels
          : referentiels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bdtfx: freezed == bdtfx
          ? _value.bdtfx
          : bdtfx // ignore: cast_nullable_to_non_nullable
              as HitBdtfx?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightResult: freezed == highlightResult
          ? _value.highlightResult
          : highlightResult // ignore: cast_nullable_to_non_nullable
              as HighlightResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HitBdtfxCopyWith<$Res>? get bdtfx {
    if (_value.bdtfx == null) {
      return null;
    }

    return $HitBdtfxCopyWith<$Res>(_value.bdtfx!, (value) {
      return _then(_value.copyWith(bdtfx: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HighlightResultCopyWith<$Res>? get highlightResult {
    if (_value.highlightResult == null) {
      return null;
    }

    return $HighlightResultCopyWith<$Res>(_value.highlightResult!, (value) {
      return _then(_value.copyWith(highlightResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaxonHitCopyWith<$Res> implements $TaxonHitCopyWith<$Res> {
  factory _$$_TaxonHitCopyWith(
          _$_TaxonHit value, $Res Function(_$_TaxonHit) then) =
      __$$_TaxonHitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? referentiels,
      HitBdtfx? bdtfx,
      String? objectId,
      @JsonKey(name: '_highlightResult') HighlightResult? highlightResult});

  @override
  $HitBdtfxCopyWith<$Res>? get bdtfx;
  @override
  $HighlightResultCopyWith<$Res>? get highlightResult;
}

/// @nodoc
class __$$_TaxonHitCopyWithImpl<$Res>
    extends _$TaxonHitCopyWithImpl<$Res, _$_TaxonHit>
    implements _$$_TaxonHitCopyWith<$Res> {
  __$$_TaxonHitCopyWithImpl(
      _$_TaxonHit _value, $Res Function(_$_TaxonHit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referentiels = freezed,
    Object? bdtfx = freezed,
    Object? objectId = freezed,
    Object? highlightResult = freezed,
  }) {
    return _then(_$_TaxonHit(
      referentiels: freezed == referentiels
          ? _value._referentiels
          : referentiels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bdtfx: freezed == bdtfx
          ? _value.bdtfx
          : bdtfx // ignore: cast_nullable_to_non_nullable
              as HitBdtfx?,
      objectId: freezed == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightResult: freezed == highlightResult
          ? _value.highlightResult
          : highlightResult // ignore: cast_nullable_to_non_nullable
              as HighlightResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxonHit implements _TaxonHit {
  const _$_TaxonHit(
      {final List<String>? referentiels,
      this.bdtfx,
      this.objectId,
      @JsonKey(name: '_highlightResult') this.highlightResult})
      : _referentiels = referentiels;

  factory _$_TaxonHit.fromJson(Map<String, dynamic> json) =>
      _$$_TaxonHitFromJson(json);

  final List<String>? _referentiels;
  @override
  List<String>? get referentiels {
    final value = _referentiels;
    if (value == null) return null;
    if (_referentiels is EqualUnmodifiableListView) return _referentiels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HitBdtfx? bdtfx;
  @override
  final String? objectId;
  @override
  @JsonKey(name: '_highlightResult')
  final HighlightResult? highlightResult;

  @override
  String toString() {
    return 'TaxonHit(referentiels: $referentiels, bdtfx: $bdtfx, objectId: $objectId, highlightResult: $highlightResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxonHit &&
            const DeepCollectionEquality()
                .equals(other._referentiels, _referentiels) &&
            (identical(other.bdtfx, bdtfx) || other.bdtfx == bdtfx) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.highlightResult, highlightResult) ||
                other.highlightResult == highlightResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_referentiels),
      bdtfx,
      objectId,
      highlightResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxonHitCopyWith<_$_TaxonHit> get copyWith =>
      __$$_TaxonHitCopyWithImpl<_$_TaxonHit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxonHitToJson(
      this,
    );
  }
}

abstract class _TaxonHit implements TaxonHit {
  const factory _TaxonHit(
      {final List<String>? referentiels,
      final HitBdtfx? bdtfx,
      final String? objectId,
      @JsonKey(name: '_highlightResult')
          final HighlightResult? highlightResult}) = _$_TaxonHit;

  factory _TaxonHit.fromJson(Map<String, dynamic> json) = _$_TaxonHit.fromJson;

  @override
  List<String>? get referentiels;
  @override
  HitBdtfx? get bdtfx;
  @override
  String? get objectId;
  @override
  @JsonKey(name: '_highlightResult')
  HighlightResult? get highlightResult;
  @override
  @JsonKey(ignore: true)
  _$$_TaxonHitCopyWith<_$_TaxonHit> get copyWith =>
      throw _privateConstructorUsedError;
}

HitBdtfx _$HitBdtfxFromJson(Map<String, dynamic> json) {
  return _HitBdtfx.fromJson(json);
}

/// @nodoc
mixin _$HitBdtfx {
  @JsonKey(name: 'nomenclatural_number')
  int? get nomenclaturalNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'scientific_name')
  String? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_name')
  String? get commonName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitBdtfxCopyWith<HitBdtfx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitBdtfxCopyWith<$Res> {
  factory $HitBdtfxCopyWith(HitBdtfx value, $Res Function(HitBdtfx) then) =
      _$HitBdtfxCopyWithImpl<$Res, HitBdtfx>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nomenclatural_number') int? nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') String? scientificName,
      @JsonKey(name: 'common_name') String? commonName});
}

/// @nodoc
class _$HitBdtfxCopyWithImpl<$Res, $Val extends HitBdtfx>
    implements $HitBdtfxCopyWith<$Res> {
  _$HitBdtfxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomenclaturalNumber = freezed,
    Object? scientificName = freezed,
    Object? commonName = freezed,
  }) {
    return _then(_value.copyWith(
      nomenclaturalNumber: freezed == nomenclaturalNumber
          ? _value.nomenclaturalNumber
          : nomenclaturalNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HitBdtfxCopyWith<$Res> implements $HitBdtfxCopyWith<$Res> {
  factory _$$_HitBdtfxCopyWith(
          _$_HitBdtfx value, $Res Function(_$_HitBdtfx) then) =
      __$$_HitBdtfxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nomenclatural_number') int? nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') String? scientificName,
      @JsonKey(name: 'common_name') String? commonName});
}

/// @nodoc
class __$$_HitBdtfxCopyWithImpl<$Res>
    extends _$HitBdtfxCopyWithImpl<$Res, _$_HitBdtfx>
    implements _$$_HitBdtfxCopyWith<$Res> {
  __$$_HitBdtfxCopyWithImpl(
      _$_HitBdtfx _value, $Res Function(_$_HitBdtfx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomenclaturalNumber = freezed,
    Object? scientificName = freezed,
    Object? commonName = freezed,
  }) {
    return _then(_$_HitBdtfx(
      nomenclaturalNumber: freezed == nomenclaturalNumber
          ? _value.nomenclaturalNumber
          : nomenclaturalNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HitBdtfx implements _HitBdtfx {
  const _$_HitBdtfx(
      {@JsonKey(name: 'nomenclatural_number') this.nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') this.scientificName,
      @JsonKey(name: 'common_name') this.commonName});

  factory _$_HitBdtfx.fromJson(Map<String, dynamic> json) =>
      _$$_HitBdtfxFromJson(json);

  @override
  @JsonKey(name: 'nomenclatural_number')
  final int? nomenclaturalNumber;
  @override
  @JsonKey(name: 'scientific_name')
  final String? scientificName;
  @override
  @JsonKey(name: 'common_name')
  final String? commonName;

  @override
  String toString() {
    return 'HitBdtfx(nomenclaturalNumber: $nomenclaturalNumber, scientificName: $scientificName, commonName: $commonName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HitBdtfx &&
            (identical(other.nomenclaturalNumber, nomenclaturalNumber) ||
                other.nomenclaturalNumber == nomenclaturalNumber) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nomenclaturalNumber, scientificName, commonName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HitBdtfxCopyWith<_$_HitBdtfx> get copyWith =>
      __$$_HitBdtfxCopyWithImpl<_$_HitBdtfx>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitBdtfxToJson(
      this,
    );
  }
}

abstract class _HitBdtfx implements HitBdtfx {
  const factory _HitBdtfx(
      {@JsonKey(name: 'nomenclatural_number') final int? nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') final String? scientificName,
      @JsonKey(name: 'common_name') final String? commonName}) = _$_HitBdtfx;

  factory _HitBdtfx.fromJson(Map<String, dynamic> json) = _$_HitBdtfx.fromJson;

  @override
  @JsonKey(name: 'nomenclatural_number')
  int? get nomenclaturalNumber;
  @override
  @JsonKey(name: 'scientific_name')
  String? get scientificName;
  @override
  @JsonKey(name: 'common_name')
  String? get commonName;
  @override
  @JsonKey(ignore: true)
  _$$_HitBdtfxCopyWith<_$_HitBdtfx> get copyWith =>
      throw _privateConstructorUsedError;
}

HighlightResult _$HighlightResultFromJson(Map<String, dynamic> json) {
  return _HighlightResult.fromJson(json);
}

/// @nodoc
mixin _$HighlightResult {
  HighlightResultBdtfx? get bdtfx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightResultCopyWith<HighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightResultCopyWith<$Res> {
  factory $HighlightResultCopyWith(
          HighlightResult value, $Res Function(HighlightResult) then) =
      _$HighlightResultCopyWithImpl<$Res, HighlightResult>;
  @useResult
  $Res call({HighlightResultBdtfx? bdtfx});

  $HighlightResultBdtfxCopyWith<$Res>? get bdtfx;
}

/// @nodoc
class _$HighlightResultCopyWithImpl<$Res, $Val extends HighlightResult>
    implements $HighlightResultCopyWith<$Res> {
  _$HighlightResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bdtfx = freezed,
  }) {
    return _then(_value.copyWith(
      bdtfx: freezed == bdtfx
          ? _value.bdtfx
          : bdtfx // ignore: cast_nullable_to_non_nullable
              as HighlightResultBdtfx?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HighlightResultBdtfxCopyWith<$Res>? get bdtfx {
    if (_value.bdtfx == null) {
      return null;
    }

    return $HighlightResultBdtfxCopyWith<$Res>(_value.bdtfx!, (value) {
      return _then(_value.copyWith(bdtfx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HighlightResultCopyWith<$Res>
    implements $HighlightResultCopyWith<$Res> {
  factory _$$_HighlightResultCopyWith(
          _$_HighlightResult value, $Res Function(_$_HighlightResult) then) =
      __$$_HighlightResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HighlightResultBdtfx? bdtfx});

  @override
  $HighlightResultBdtfxCopyWith<$Res>? get bdtfx;
}

/// @nodoc
class __$$_HighlightResultCopyWithImpl<$Res>
    extends _$HighlightResultCopyWithImpl<$Res, _$_HighlightResult>
    implements _$$_HighlightResultCopyWith<$Res> {
  __$$_HighlightResultCopyWithImpl(
      _$_HighlightResult _value, $Res Function(_$_HighlightResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bdtfx = freezed,
  }) {
    return _then(_$_HighlightResult(
      bdtfx: freezed == bdtfx
          ? _value.bdtfx
          : bdtfx // ignore: cast_nullable_to_non_nullable
              as HighlightResultBdtfx?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighlightResult implements _HighlightResult {
  const _$_HighlightResult({this.bdtfx});

  factory _$_HighlightResult.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightResultFromJson(json);

  @override
  final HighlightResultBdtfx? bdtfx;

  @override
  String toString() {
    return 'HighlightResult(bdtfx: $bdtfx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HighlightResult &&
            (identical(other.bdtfx, bdtfx) || other.bdtfx == bdtfx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bdtfx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightResultCopyWith<_$_HighlightResult> get copyWith =>
      __$$_HighlightResultCopyWithImpl<_$_HighlightResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightResultToJson(
      this,
    );
  }
}

abstract class _HighlightResult implements HighlightResult {
  const factory _HighlightResult({final HighlightResultBdtfx? bdtfx}) =
      _$_HighlightResult;

  factory _HighlightResult.fromJson(Map<String, dynamic> json) =
      _$_HighlightResult.fromJson;

  @override
  HighlightResultBdtfx? get bdtfx;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightResultCopyWith<_$_HighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

HighlightResultBdtfx _$HighlightResultBdtfxFromJson(Map<String, dynamic> json) {
  return _HighlightResultBdtfx.fromJson(json);
}

/// @nodoc
mixin _$HighlightResultBdtfx {
  @JsonKey(name: 'scientific_name')
  Name? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_name')
  Name? get commonName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightResultBdtfxCopyWith<HighlightResultBdtfx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightResultBdtfxCopyWith<$Res> {
  factory $HighlightResultBdtfxCopyWith(HighlightResultBdtfx value,
          $Res Function(HighlightResultBdtfx) then) =
      _$HighlightResultBdtfxCopyWithImpl<$Res, HighlightResultBdtfx>;
  @useResult
  $Res call(
      {@JsonKey(name: 'scientific_name') Name? scientificName,
      @JsonKey(name: 'common_name') Name? commonName});

  $NameCopyWith<$Res>? get scientificName;
  $NameCopyWith<$Res>? get commonName;
}

/// @nodoc
class _$HighlightResultBdtfxCopyWithImpl<$Res,
        $Val extends HighlightResultBdtfx>
    implements $HighlightResultBdtfxCopyWith<$Res> {
  _$HighlightResultBdtfxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scientificName = freezed,
    Object? commonName = freezed,
  }) {
    return _then(_value.copyWith(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as Name?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as Name?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get scientificName {
    if (_value.scientificName == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.scientificName!, (value) {
      return _then(_value.copyWith(scientificName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get commonName {
    if (_value.commonName == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.commonName!, (value) {
      return _then(_value.copyWith(commonName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HighlightResultBdtfxCopyWith<$Res>
    implements $HighlightResultBdtfxCopyWith<$Res> {
  factory _$$_HighlightResultBdtfxCopyWith(_$_HighlightResultBdtfx value,
          $Res Function(_$_HighlightResultBdtfx) then) =
      __$$_HighlightResultBdtfxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'scientific_name') Name? scientificName,
      @JsonKey(name: 'common_name') Name? commonName});

  @override
  $NameCopyWith<$Res>? get scientificName;
  @override
  $NameCopyWith<$Res>? get commonName;
}

/// @nodoc
class __$$_HighlightResultBdtfxCopyWithImpl<$Res>
    extends _$HighlightResultBdtfxCopyWithImpl<$Res, _$_HighlightResultBdtfx>
    implements _$$_HighlightResultBdtfxCopyWith<$Res> {
  __$$_HighlightResultBdtfxCopyWithImpl(_$_HighlightResultBdtfx _value,
      $Res Function(_$_HighlightResultBdtfx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scientificName = freezed,
    Object? commonName = freezed,
  }) {
    return _then(_$_HighlightResultBdtfx(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as Name?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as Name?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HighlightResultBdtfx implements _HighlightResultBdtfx {
  const _$_HighlightResultBdtfx(
      {@JsonKey(name: 'scientific_name') this.scientificName,
      @JsonKey(name: 'common_name') this.commonName});

  factory _$_HighlightResultBdtfx.fromJson(Map<String, dynamic> json) =>
      _$$_HighlightResultBdtfxFromJson(json);

  @override
  @JsonKey(name: 'scientific_name')
  final Name? scientificName;
  @override
  @JsonKey(name: 'common_name')
  final Name? commonName;

  @override
  String toString() {
    return 'HighlightResultBdtfx(scientificName: $scientificName, commonName: $commonName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HighlightResultBdtfx &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scientificName, commonName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HighlightResultBdtfxCopyWith<_$_HighlightResultBdtfx> get copyWith =>
      __$$_HighlightResultBdtfxCopyWithImpl<_$_HighlightResultBdtfx>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HighlightResultBdtfxToJson(
      this,
    );
  }
}

abstract class _HighlightResultBdtfx implements HighlightResultBdtfx {
  const factory _HighlightResultBdtfx(
          {@JsonKey(name: 'scientific_name') final Name? scientificName,
          @JsonKey(name: 'common_name') final Name? commonName}) =
      _$_HighlightResultBdtfx;

  factory _HighlightResultBdtfx.fromJson(Map<String, dynamic> json) =
      _$_HighlightResultBdtfx.fromJson;

  @override
  @JsonKey(name: 'scientific_name')
  Name? get scientificName;
  @override
  @JsonKey(name: 'common_name')
  Name? get commonName;
  @override
  @JsonKey(ignore: true)
  _$$_HighlightResultBdtfxCopyWith<_$_HighlightResultBdtfx> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String? get value => throw _privateConstructorUsedError;
  List<String>? get matchedWords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String? value, List<String>? matchedWords});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? matchedWords = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedWords: freezed == matchedWords
          ? _value.matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, List<String>? matchedWords});
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res, _$_Name>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? matchedWords = freezed,
  }) {
    return _then(_$_Name(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedWords: freezed == matchedWords
          ? _value._matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  const _$_Name({this.value, final List<String>? matchedWords})
      : _matchedWords = matchedWords;

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String? value;
  final List<String>? _matchedWords;
  @override
  List<String>? get matchedWords {
    final value = _matchedWords;
    if (value == null) return null;
    if (_matchedWords is EqualUnmodifiableListView) return _matchedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Name(value: $value, matchedWords: $matchedWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._matchedWords, _matchedWords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_matchedWords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name({final String? value, final List<String>? matchedWords}) =
      _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String? get value;
  @override
  List<String>? get matchedWords;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}
