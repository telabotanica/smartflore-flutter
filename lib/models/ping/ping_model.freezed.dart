// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ping _$PingFromJson(Map<String, dynamic> json) {
  return _Ping.fromJson(json);
}

/// @nodoc
mixin _$Ping {
  @JsonKey(name: 'is_logged')
  bool get isLogged => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_located')
  bool get isLocated => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_from_trail')
  int? get distanceFromTrail => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get trail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PingCopyWith<Ping> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PingCopyWith<$Res> {
  factory $PingCopyWith(Ping value, $Res Function(Ping) then) =
      _$PingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'is_logged') bool isLogged,
      @JsonKey(name: 'is_located') bool isLocated,
      @JsonKey(name: 'distance_from_trail') int? distanceFromTrail,
      @JsonKey(name: 'is_online') bool isOnline,
      String date,
      int trail});
}

/// @nodoc
class _$PingCopyWithImpl<$Res> implements $PingCopyWith<$Res> {
  _$PingCopyWithImpl(this._value, this._then);

  final Ping _value;
  // ignore: unused_field
  final $Res Function(Ping) _then;

  @override
  $Res call({
    Object? isLogged = freezed,
    Object? isLocated = freezed,
    Object? distanceFromTrail = freezed,
    Object? isOnline = freezed,
    Object? date = freezed,
    Object? trail = freezed,
  }) {
    return _then(_value.copyWith(
      isLogged: isLogged == freezed
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocated: isLocated == freezed
          ? _value.isLocated
          : isLocated // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceFromTrail: distanceFromTrail == freezed
          ? _value.distanceFromTrail
          : distanceFromTrail // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PingCopyWith<$Res> implements $PingCopyWith<$Res> {
  factory _$$_PingCopyWith(_$_Ping value, $Res Function(_$_Ping) then) =
      __$$_PingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'is_logged') bool isLogged,
      @JsonKey(name: 'is_located') bool isLocated,
      @JsonKey(name: 'distance_from_trail') int? distanceFromTrail,
      @JsonKey(name: 'is_online') bool isOnline,
      String date,
      int trail});
}

/// @nodoc
class __$$_PingCopyWithImpl<$Res> extends _$PingCopyWithImpl<$Res>
    implements _$$_PingCopyWith<$Res> {
  __$$_PingCopyWithImpl(_$_Ping _value, $Res Function(_$_Ping) _then)
      : super(_value, (v) => _then(v as _$_Ping));

  @override
  _$_Ping get _value => super._value as _$_Ping;

  @override
  $Res call({
    Object? isLogged = freezed,
    Object? isLocated = freezed,
    Object? distanceFromTrail = freezed,
    Object? isOnline = freezed,
    Object? date = freezed,
    Object? trail = freezed,
  }) {
    return _then(_$_Ping(
      isLogged: isLogged == freezed
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocated: isLocated == freezed
          ? _value.isLocated
          : isLocated // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceFromTrail: distanceFromTrail == freezed
          ? _value.distanceFromTrail
          : distanceFromTrail // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      trail: trail == freezed
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ping implements _Ping {
  const _$_Ping(
      {@JsonKey(name: 'is_logged') required this.isLogged,
      @JsonKey(name: 'is_located') required this.isLocated,
      @JsonKey(name: 'distance_from_trail') this.distanceFromTrail,
      @JsonKey(name: 'is_online') required this.isOnline,
      required this.date,
      required this.trail});

  factory _$_Ping.fromJson(Map<String, dynamic> json) => _$$_PingFromJson(json);

  @override
  @JsonKey(name: 'is_logged')
  final bool isLogged;
  @override
  @JsonKey(name: 'is_located')
  final bool isLocated;
  @override
  @JsonKey(name: 'distance_from_trail')
  final int? distanceFromTrail;
  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;
  @override
  final String date;
  @override
  final int trail;

  @override
  String toString() {
    return 'Ping(isLogged: $isLogged, isLocated: $isLocated, distanceFromTrail: $distanceFromTrail, isOnline: $isOnline, date: $date, trail: $trail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ping &&
            const DeepCollectionEquality().equals(other.isLogged, isLogged) &&
            const DeepCollectionEquality().equals(other.isLocated, isLocated) &&
            const DeepCollectionEquality()
                .equals(other.distanceFromTrail, distanceFromTrail) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.trail, trail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLogged),
      const DeepCollectionEquality().hash(isLocated),
      const DeepCollectionEquality().hash(distanceFromTrail),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(trail));

  @JsonKey(ignore: true)
  @override
  _$$_PingCopyWith<_$_Ping> get copyWith =>
      __$$_PingCopyWithImpl<_$_Ping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PingToJson(
      this,
    );
  }
}

abstract class _Ping implements Ping {
  const factory _Ping(
      {@JsonKey(name: 'is_logged') required final bool isLogged,
      @JsonKey(name: 'is_located') required final bool isLocated,
      @JsonKey(name: 'distance_from_trail') final int? distanceFromTrail,
      @JsonKey(name: 'is_online') required final bool isOnline,
      required final String date,
      required final int trail}) = _$_Ping;

  factory _Ping.fromJson(Map<String, dynamic> json) = _$_Ping.fromJson;

  @override
  @JsonKey(name: 'is_logged')
  bool get isLogged;
  @override
  @JsonKey(name: 'is_located')
  bool get isLocated;
  @override
  @JsonKey(name: 'distance_from_trail')
  int? get distanceFromTrail;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;
  @override
  String get date;
  @override
  int get trail;
  @override
  @JsonKey(ignore: true)
  _$$_PingCopyWith<_$_Ping> get copyWith => throw _privateConstructorUsedError;
}
