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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$TaxonHitsImplCopyWith<$Res>
    implements $TaxonHitsCopyWith<$Res> {
  factory _$$TaxonHitsImplCopyWith(
          _$TaxonHitsImpl value, $Res Function(_$TaxonHitsImpl) then) =
      __$$TaxonHitsImplCopyWithImpl<$Res>;
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
class __$$TaxonHitsImplCopyWithImpl<$Res>
    extends _$TaxonHitsCopyWithImpl<$Res, _$TaxonHitsImpl>
    implements _$$TaxonHitsImplCopyWith<$Res> {
  __$$TaxonHitsImplCopyWithImpl(
      _$TaxonHitsImpl _value, $Res Function(_$TaxonHitsImpl) _then)
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
    return _then(_$TaxonHitsImpl(
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
class _$TaxonHitsImpl implements _TaxonHits {
  const _$TaxonHitsImpl(
      {required final List<TaxonHit> hits,
      required this.nbHits,
      required this.page,
      required this.nbPages,
      required this.hitsPerPage,
      this.nextPageKey})
      : _hits = hits;

  factory _$TaxonHitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxonHitsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxonHitsImpl &&
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
  _$$TaxonHitsImplCopyWith<_$TaxonHitsImpl> get copyWith =>
      __$$TaxonHitsImplCopyWithImpl<_$TaxonHitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxonHitsImplToJson(
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
      final int? nextPageKey}) = _$TaxonHitsImpl;

  factory _TaxonHits.fromJson(Map<String, dynamic> json) =
      _$TaxonHitsImpl.fromJson;

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
  _$$TaxonHitsImplCopyWith<_$TaxonHitsImpl> get copyWith =>
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
abstract class _$$TaxonHitImplCopyWith<$Res>
    implements $TaxonHitCopyWith<$Res> {
  factory _$$TaxonHitImplCopyWith(
          _$TaxonHitImpl value, $Res Function(_$TaxonHitImpl) then) =
      __$$TaxonHitImplCopyWithImpl<$Res>;
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
class __$$TaxonHitImplCopyWithImpl<$Res>
    extends _$TaxonHitCopyWithImpl<$Res, _$TaxonHitImpl>
    implements _$$TaxonHitImplCopyWith<$Res> {
  __$$TaxonHitImplCopyWithImpl(
      _$TaxonHitImpl _value, $Res Function(_$TaxonHitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referentiels = freezed,
    Object? bdtfx = freezed,
    Object? objectId = freezed,
    Object? highlightResult = freezed,
  }) {
    return _then(_$TaxonHitImpl(
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
class _$TaxonHitImpl implements _TaxonHit {
  const _$TaxonHitImpl(
      {final List<String>? referentiels,
      this.bdtfx,
      this.objectId,
      @JsonKey(name: '_highlightResult') this.highlightResult})
      : _referentiels = referentiels;

  factory _$TaxonHitImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxonHitImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxonHitImpl &&
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
  _$$TaxonHitImplCopyWith<_$TaxonHitImpl> get copyWith =>
      __$$TaxonHitImplCopyWithImpl<_$TaxonHitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxonHitImplToJson(
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
      final HighlightResult? highlightResult}) = _$TaxonHitImpl;

  factory _TaxonHit.fromJson(Map<String, dynamic> json) =
      _$TaxonHitImpl.fromJson;

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
  _$$TaxonHitImplCopyWith<_$TaxonHitImpl> get copyWith =>
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
  @JsonKey(name: 'line_names')
  List<String>? get commonName => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'line_names') List<String>? commonName});
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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitBdtfxImplCopyWith<$Res>
    implements $HitBdtfxCopyWith<$Res> {
  factory _$$HitBdtfxImplCopyWith(
          _$HitBdtfxImpl value, $Res Function(_$HitBdtfxImpl) then) =
      __$$HitBdtfxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nomenclatural_number') int? nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') String? scientificName,
      @JsonKey(name: 'line_names') List<String>? commonName});
}

/// @nodoc
class __$$HitBdtfxImplCopyWithImpl<$Res>
    extends _$HitBdtfxCopyWithImpl<$Res, _$HitBdtfxImpl>
    implements _$$HitBdtfxImplCopyWith<$Res> {
  __$$HitBdtfxImplCopyWithImpl(
      _$HitBdtfxImpl _value, $Res Function(_$HitBdtfxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomenclaturalNumber = freezed,
    Object? scientificName = freezed,
    Object? commonName = freezed,
  }) {
    return _then(_$HitBdtfxImpl(
      nomenclaturalNumber: freezed == nomenclaturalNumber
          ? _value.nomenclaturalNumber
          : nomenclaturalNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      commonName: freezed == commonName
          ? _value._commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitBdtfxImpl implements _HitBdtfx {
  const _$HitBdtfxImpl(
      {@JsonKey(name: 'nomenclatural_number') this.nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') this.scientificName,
      @JsonKey(name: 'line_names') final List<String>? commonName})
      : _commonName = commonName;

  factory _$HitBdtfxImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitBdtfxImplFromJson(json);

  @override
  @JsonKey(name: 'nomenclatural_number')
  final int? nomenclaturalNumber;
  @override
  @JsonKey(name: 'scientific_name')
  final String? scientificName;
  final List<String>? _commonName;
  @override
  @JsonKey(name: 'line_names')
  List<String>? get commonName {
    final value = _commonName;
    if (value == null) return null;
    if (_commonName is EqualUnmodifiableListView) return _commonName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HitBdtfx(nomenclaturalNumber: $nomenclaturalNumber, scientificName: $scientificName, commonName: $commonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitBdtfxImpl &&
            (identical(other.nomenclaturalNumber, nomenclaturalNumber) ||
                other.nomenclaturalNumber == nomenclaturalNumber) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            const DeepCollectionEquality()
                .equals(other._commonName, _commonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nomenclaturalNumber,
      scientificName, const DeepCollectionEquality().hash(_commonName));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitBdtfxImplCopyWith<_$HitBdtfxImpl> get copyWith =>
      __$$HitBdtfxImplCopyWithImpl<_$HitBdtfxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitBdtfxImplToJson(
      this,
    );
  }
}

abstract class _HitBdtfx implements HitBdtfx {
  const factory _HitBdtfx(
      {@JsonKey(name: 'nomenclatural_number') final int? nomenclaturalNumber,
      @JsonKey(name: 'scientific_name') final String? scientificName,
      @JsonKey(name: 'line_names')
      final List<String>? commonName}) = _$HitBdtfxImpl;

  factory _HitBdtfx.fromJson(Map<String, dynamic> json) =
      _$HitBdtfxImpl.fromJson;

  @override
  @JsonKey(name: 'nomenclatural_number')
  int? get nomenclaturalNumber;
  @override
  @JsonKey(name: 'scientific_name')
  String? get scientificName;
  @override
  @JsonKey(name: 'line_names')
  List<String>? get commonName;
  @override
  @JsonKey(ignore: true)
  _$$HitBdtfxImplCopyWith<_$HitBdtfxImpl> get copyWith =>
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
abstract class _$$HighlightResultImplCopyWith<$Res>
    implements $HighlightResultCopyWith<$Res> {
  factory _$$HighlightResultImplCopyWith(_$HighlightResultImpl value,
          $Res Function(_$HighlightResultImpl) then) =
      __$$HighlightResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HighlightResultBdtfx? bdtfx});

  @override
  $HighlightResultBdtfxCopyWith<$Res>? get bdtfx;
}

/// @nodoc
class __$$HighlightResultImplCopyWithImpl<$Res>
    extends _$HighlightResultCopyWithImpl<$Res, _$HighlightResultImpl>
    implements _$$HighlightResultImplCopyWith<$Res> {
  __$$HighlightResultImplCopyWithImpl(
      _$HighlightResultImpl _value, $Res Function(_$HighlightResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bdtfx = freezed,
  }) {
    return _then(_$HighlightResultImpl(
      bdtfx: freezed == bdtfx
          ? _value.bdtfx
          : bdtfx // ignore: cast_nullable_to_non_nullable
              as HighlightResultBdtfx?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightResultImpl implements _HighlightResult {
  const _$HighlightResultImpl({this.bdtfx});

  factory _$HighlightResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightResultImplFromJson(json);

  @override
  final HighlightResultBdtfx? bdtfx;

  @override
  String toString() {
    return 'HighlightResult(bdtfx: $bdtfx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightResultImpl &&
            (identical(other.bdtfx, bdtfx) || other.bdtfx == bdtfx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bdtfx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightResultImplCopyWith<_$HighlightResultImpl> get copyWith =>
      __$$HighlightResultImplCopyWithImpl<_$HighlightResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightResultImplToJson(
      this,
    );
  }
}

abstract class _HighlightResult implements HighlightResult {
  const factory _HighlightResult({final HighlightResultBdtfx? bdtfx}) =
      _$HighlightResultImpl;

  factory _HighlightResult.fromJson(Map<String, dynamic> json) =
      _$HighlightResultImpl.fromJson;

  @override
  HighlightResultBdtfx? get bdtfx;
  @override
  @JsonKey(ignore: true)
  _$$HighlightResultImplCopyWith<_$HighlightResultImpl> get copyWith =>
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
  List<Name> get commonName => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'common_name') List<Name> commonName});

  $NameCopyWith<$Res>? get scientificName;
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
    Object? commonName = null,
  }) {
    return _then(_value.copyWith(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as Name?,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as List<Name>,
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
}

/// @nodoc
abstract class _$$HighlightResultBdtfxImplCopyWith<$Res>
    implements $HighlightResultBdtfxCopyWith<$Res> {
  factory _$$HighlightResultBdtfxImplCopyWith(_$HighlightResultBdtfxImpl value,
          $Res Function(_$HighlightResultBdtfxImpl) then) =
      __$$HighlightResultBdtfxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'scientific_name') Name? scientificName,
      @JsonKey(name: 'common_name') List<Name> commonName});

  @override
  $NameCopyWith<$Res>? get scientificName;
}

/// @nodoc
class __$$HighlightResultBdtfxImplCopyWithImpl<$Res>
    extends _$HighlightResultBdtfxCopyWithImpl<$Res, _$HighlightResultBdtfxImpl>
    implements _$$HighlightResultBdtfxImplCopyWith<$Res> {
  __$$HighlightResultBdtfxImplCopyWithImpl(_$HighlightResultBdtfxImpl _value,
      $Res Function(_$HighlightResultBdtfxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scientificName = freezed,
    Object? commonName = null,
  }) {
    return _then(_$HighlightResultBdtfxImpl(
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as Name?,
      commonName: null == commonName
          ? _value._commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as List<Name>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightResultBdtfxImpl implements _HighlightResultBdtfx {
  const _$HighlightResultBdtfxImpl(
      {@JsonKey(name: 'scientific_name') required this.scientificName,
      @JsonKey(name: 'common_name') required final List<Name> commonName})
      : _commonName = commonName;

  factory _$HighlightResultBdtfxImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightResultBdtfxImplFromJson(json);

  @override
  @JsonKey(name: 'scientific_name')
  final Name? scientificName;
  final List<Name> _commonName;
  @override
  @JsonKey(name: 'common_name')
  List<Name> get commonName {
    if (_commonName is EqualUnmodifiableListView) return _commonName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonName);
  }

  @override
  String toString() {
    return 'HighlightResultBdtfx(scientificName: $scientificName, commonName: $commonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightResultBdtfxImpl &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            const DeepCollectionEquality()
                .equals(other._commonName, _commonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scientificName,
      const DeepCollectionEquality().hash(_commonName));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightResultBdtfxImplCopyWith<_$HighlightResultBdtfxImpl>
      get copyWith =>
          __$$HighlightResultBdtfxImplCopyWithImpl<_$HighlightResultBdtfxImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightResultBdtfxImplToJson(
      this,
    );
  }
}

abstract class _HighlightResultBdtfx implements HighlightResultBdtfx {
  const factory _HighlightResultBdtfx(
      {@JsonKey(name: 'scientific_name') required final Name? scientificName,
      @JsonKey(name: 'common_name')
      required final List<Name> commonName}) = _$HighlightResultBdtfxImpl;

  factory _HighlightResultBdtfx.fromJson(Map<String, dynamic> json) =
      _$HighlightResultBdtfxImpl.fromJson;

  @override
  @JsonKey(name: 'scientific_name')
  Name? get scientificName;
  @override
  @JsonKey(name: 'common_name')
  List<Name> get commonName;
  @override
  @JsonKey(ignore: true)
  _$$HighlightResultBdtfxImplCopyWith<_$HighlightResultBdtfxImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'match_level')
  String? get matchLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_words')
  List<dynamic>? get matchedWords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call(
      {String value,
      @JsonKey(name: 'match_level') String? matchLevel,
      @JsonKey(name: 'matched_words') List<dynamic>? matchedWords});
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
    Object? value = null,
    Object? matchLevel = freezed,
    Object? matchedWords = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedWords: freezed == matchedWords
          ? _value.matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      @JsonKey(name: 'match_level') String? matchLevel,
      @JsonKey(name: 'matched_words') List<dynamic>? matchedWords});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? matchLevel = freezed,
    Object? matchedWords = freezed,
  }) {
    return _then(_$NameImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedWords: freezed == matchedWords
          ? _value._matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  const _$NameImpl(
      {required this.value,
      @JsonKey(name: 'match_level') this.matchLevel,
      @JsonKey(name: 'matched_words') final List<dynamic>? matchedWords})
      : _matchedWords = matchedWords;

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String value;
  @override
  @JsonKey(name: 'match_level')
  final String? matchLevel;
  final List<dynamic>? _matchedWords;
  @override
  @JsonKey(name: 'matched_words')
  List<dynamic>? get matchedWords {
    final value = _matchedWords;
    if (value == null) return null;
    if (_matchedWords is EqualUnmodifiableListView) return _matchedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Name(value: $value, matchLevel: $matchLevel, matchedWords: $matchedWords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.matchLevel, matchLevel) ||
                other.matchLevel == matchLevel) &&
            const DeepCollectionEquality()
                .equals(other._matchedWords, _matchedWords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, matchLevel,
      const DeepCollectionEquality().hash(_matchedWords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
          {required final String value,
          @JsonKey(name: 'match_level') final String? matchLevel,
          @JsonKey(name: 'matched_words') final List<dynamic>? matchedWords}) =
      _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(name: 'match_level')
  String? get matchLevel;
  @override
  @JsonKey(name: 'matched_words')
  List<dynamic>? get matchedWords;
  @override
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
