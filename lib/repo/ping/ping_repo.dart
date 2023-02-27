import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/models/ping/ping_model.dart';
import 'package:smartflore/repo/geolocation/geolocation_repo.dart';

import 'ping_api_client.dart';

class PingRepo {
  final PingApiClient pingApiClient;
  final Box appConfig;
  final GeolocationRepo geolocationRepo;

  PingRepo(
      {required this.pingApiClient,
      required this.appConfig,
      required this.geolocationRepo});

  Future<bool> postPing(int trailId, LatLng trailStartLocation) async {
    // Get connection status:
    ConnectivityResult? connectivityStatus =
        appConfig.get('connectivityStatus');
    bool offline = (connectivityStatus == null)
        ? true
        : (connectivityStatus == ConnectivityResult.none);
    //get locationStatus
    PermissionStatus permissionStatus = await geolocationRepo.getPermissions();
    bool isLocated = (permissionStatus == PermissionStatus.granted);

    //get distance between user and trail
    int? distance;
    if (isLocated) {
      Position currentPosition = await geolocationRepo.getCurrentLocation();
      distance = Geolocator.distanceBetween(
              currentPosition.latitude,
              currentPosition.longitude,
              trailStartLocation.latitude,
              trailStartLocation.longitude)
          .toInt();
    }
    //convert Date
    String date = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    Ping ping = Ping(
        isLogged: false,
        isLocated: isLocated,
        date: date,
        distanceFromTrail: distance,
        isOnline: !offline,
        trail: trailId);

    final bool result = await pingApiClient.postPing(ping);
    return result;
  }
}
