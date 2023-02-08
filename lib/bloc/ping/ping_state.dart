part of 'ping_bloc.dart';

@freezed
class PingState with _$PingState {
  const factory PingState.initial() = _Initial;
  const factory PingState.loading() = _Loading;
  const factory PingState.loaded() = _Loaded;
  const factory PingState.error() = _Error;
}
