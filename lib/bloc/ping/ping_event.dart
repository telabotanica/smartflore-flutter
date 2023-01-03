part of 'ping_bloc.dart';

@freezed
class PingEvent with _$PingEvent {
  const factory PingEvent.ping(int trailId, LatLng trailStartLocation) = _Ping;
}
