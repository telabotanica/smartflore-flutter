import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepo _geolocationRepo;
  GeolocationBloc({required GeolocationRepo geolocationRepo})
      : _geolocationRepo = geolocationRepo,
        super(LocationInitialState()) {
    // PERMISSION
    on<RequestLocationPermissionEvent>(((event, emit) async {
      print('REQUEST PERMISSION');
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
      final Stream<Position>? locationStream = await _geolocationRepo.getLocationStream();
      if (locationStream != null) {
        locationStream.listen((Position position) {
          print('position changed');
          print('${position.latitude.toString()}, ${position.longitude.toString()}');
          add(UpdateLocationEvent(position: position));
        });
      } else {
        print('location stream not available');
      }
    });

    on<UpdateLocationEvent>((event, emit) async {
      emit(LocationUpdatedState(position: event.position));
    });
  }
}
