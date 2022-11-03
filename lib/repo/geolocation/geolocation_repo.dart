import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:geolocator/geolocator.dart';

enum PermissionStatus { loading, granted, disabled, denied, permanentlyDenied }

class GeolocationRepo {
  late bool isPermissionRequested = false;
  GeolocationRepo();
  late bool appSettingsOpened = false;

  Future<Position> getCurrentLocation() async {
    await getPermissions();

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<Stream<Position>?> getLocationStream() async {
    PermissionStatus permissionStatus = await getPermissions();
    if (permissionStatus == PermissionStatus.granted) {
      const LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 2,
      );

      Stream<Position> positionStream =
          Geolocator.getPositionStream(locationSettings: locationSettings);

      return positionStream;
    } else {
      return null;
    }
  }

  Future<PermissionStatus> getPermissions() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return PermissionStatus.disabled;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      if (!isPermissionRequested) {
        isPermissionRequested = true;
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied) {
        return PermissionStatus.denied;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return PermissionStatus.permanentlyDenied;
    }
    appSettingsOpened = false;
    return PermissionStatus.granted;
  }

  Future<void> openPreferences() async {
    if (!appSettingsOpened) {
      appSettingsOpened = true;
      await AppSettings.openLocationSettings();
    }
  }
}
