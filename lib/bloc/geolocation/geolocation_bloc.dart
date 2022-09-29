import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepo _geolocationRepo;
  final MapBloc _mapBloc;
  late StreamSubscription mapBlocSub;

  GeolocationBloc(
      {required GeolocationRepo geolocationRepo, required MapBloc mapBloc})
      : _geolocationRepo = geolocationRepo,
        _mapBloc = mapBloc,
        super(LocationInitialState()) {
    mapBlocSub = _mapBloc.stream.listen((state) async {
      if (state is OnRecenterMap) {
        PermissionStatus status = await _geolocationRepo.getPermissions();
        add(RequestCurrentLocationStreamEvent());
      }
    });
    // PERMISSION
    on<RequestLocationPermissionEvent>(((event, emit) async {
      emit(LocationPermissionLoadingState());
      PermissionStatus status = await _geolocationRepo.getPermissions();
      emit(LocationPermissionLoadedState(status: status));
      add(RequestCurrentLocationStreamEvent());
    }));

    // CURRENT LOCATION
    on<RequestCurrentLocationEvent>((event, emit) async {
      emit(LocationLoadingState());
      final Position position = await _geolocationRepo.getCurrentLocation();
      emit(LocationUpdatedState(position: position));
    });

    // STREAM CURRENT LOCATION
    on<RequestCurrentLocationStreamEvent>((event, emit) async {
      emit(LocationLoadingState());
      final Stream<Position>? locationStream =
          await _geolocationRepo.getLocationStream();
      if (locationStream != null) {
        locationStream.listen((Position position) {
          add(UpdateLocationEvent(position: position));
        }, onError: (dynamic error) async {});
      } else {}
    });

    on<UpdateLocationEvent>((event, emit) async {
      emit(LocationUpdatedState(position: event.position));
    });
  }
}
