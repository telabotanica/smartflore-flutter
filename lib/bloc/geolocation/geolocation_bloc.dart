import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';
part 'geolocation_bloc.freezed.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepo _geolocationRepo;
  final MapBloc _mapBloc;
  late StreamSubscription mapBlocSub;
  Stream<Position>? locationStream;
  FollowMode? followMode;
  final StreamController<Position> _streamController =
      StreamController<Position>();

  GeolocationBloc(
      {required GeolocationRepo geolocationRepo, required MapBloc mapBloc})
      : _geolocationRepo = geolocationRepo,
        _mapBloc = mapBloc,
        super(const _Initial()) {
    mapBlocSub = _mapBloc.stream.listen((state) async {
      state.maybeWhen(
          onFollowModeChanged: (FollowMode followMode) {
            this.followMode = followMode;
          },
          onRecenterMap: () async {
            PermissionStatus status = await _geolocationRepo.getPermissions();
            if (status == PermissionStatus.disabled) {
              await _geolocationRepo.openPreferences();
            }
            add(const GeolocationEvent.requestCurrentLocationStream());
          },
          orElse: () {});
    });

    on<GeolocationEvent>((event, emit) async {
      await event.when(
          started: () {},
          requestPermission: () async {
            emit(const GeolocationState.permissionLoading());
            PermissionStatus status = await _geolocationRepo.getPermissions();
            emit(GeolocationState.permissionLoaded(status));
            add(const GeolocationEvent.requestCurrentLocationStream());
          },
          requestCurrentLocation: () async {
            emit(const GeolocationState.loading());
            final Position position =
                await _geolocationRepo.getCurrentLocation();
            emit(GeolocationState.locationUpdate(position));
          },
          requestCurrentLocationStream: () async {
            emit(const GeolocationState.loading());
            if (locationStream == null) {
              locationStream ??= await _geolocationRepo.getLocationStream();
              if (locationStream != null) {
                _streamController.addStream(locationStream!);
              }
            }
            if (!_streamController.hasListener) {
              _streamController.stream.listen((Position position) {
                add(GeolocationEvent.updateLocation(position));
              }, onError: (dynamic error) async {});
            }
          },
          updateLocation: (position) {
            if (followMode == FollowMode.locked) {
              //recenterMode
              _mapBloc.add(const MapEvent.requestCenterMap(true));
            }

            emit(GeolocationState.locationUpdate(position));
          });
    });
  }
}
