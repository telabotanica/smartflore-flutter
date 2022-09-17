import 'package:latlong2/latlong.dart';

class Numbers {
  static convertToKilo(double value, String inputUnit, String outputUnit) {
    if (value > 999) {
      if (value > 9999) {
        return '${(value / 1000).toStringAsFixed(0)} $outputUnit';
      }
      return '${(value / 1000).toStringAsFixed(2)} $outputUnit';
    }

    return '${value.toStringAsFixed(0)} $inputUnit';
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

class StringUtils {
  static String removeExtension(String url) {
    final imageExtension = RegExp(r'\.(gif|jpe?g|tiff?|png|webp|bmp)$');
    if (imageExtension.hasMatch(url)) {
      url = url.substring(0, url.lastIndexOf('.') - 1);
      return url;
    } else {
      return url.substring(0, url.length - 1);
    }
  }
}
