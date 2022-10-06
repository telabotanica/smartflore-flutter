import 'package:hive_flutter/adapters.dart';
import 'package:latlong2/latlong.dart';

class LatLngAdapter extends TypeAdapter<LatLng> {
  @override
  final typeId = 0;

  @override
  LatLng read(BinaryReader reader) {
    var lat = reader.readDouble();
    var lng = reader.readDouble();
    return LatLng(lat, lng);
  }

  @override
  void write(BinaryWriter writer, LatLng obj) {
    writer.writeDouble(obj.latitude);
    writer.writeDouble(obj.longitude);
  }
}
