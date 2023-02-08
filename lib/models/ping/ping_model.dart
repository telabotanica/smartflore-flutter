import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ping_model.freezed.dart';
part 'ping_model.g.dart';

Ping pingFromJson(String str) => Ping.fromJson(json.decode(str));

String pingToJson(Ping data) => json.encode(data.toJson());

@freezed
class Ping with _$Ping {
  const factory Ping({
    @JsonKey(name: 'is_logged') required bool isLogged,
    @JsonKey(name: 'is_located') required bool isLocated,
    @JsonKey(name: 'distance_from_trail') int? distanceFromTrail,
    @JsonKey(name: 'is_online') required bool isOnline,
    required String date,
    required int trail,
  }) = _Ping;

  factory Ping.fromJson(Map<String, dynamic> json) => _$PingFromJson(json);
}
