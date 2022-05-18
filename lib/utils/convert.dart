import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Numbers {
  static mToKM(double meters) {
    if (meters > 999) {
      if (meters > 9999) {
        return '${(meters / 1000).toStringAsFixed(0)} km';
      }
      return '${(meters / 1000).toStringAsFixed(2)} km';
    }

    return '${meters.toStringAsFixed(0)} m';
  }
}

class LatLngUtils {
  static LatLng listToLatLng(List<double> list) {
    return LatLng(list[1], list[0]);
  }

  static List<LatLng> listListToListLatLng(List<List<double>> list) {
    return list.map((e) => LatLng(e[1], e[0])).toList();
  }
}
