import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive_flutter/adapters.dart';

class ConnectivityResultAdapter extends TypeAdapter<ConnectivityResult> {
  @override
  final typeId = 200;

  @override
  ConnectivityResult read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ConnectivityResult.bluetooth;
      case 1:
        return ConnectivityResult.wifi;
      case 2:
        return ConnectivityResult.ethernet;
      case 3:
        return ConnectivityResult.mobile;
      case 4:
        return ConnectivityResult.none;
      default:
        return ConnectivityResult.none;
    }
  }

  @override
  void write(BinaryWriter writer, ConnectivityResult obj) {
    switch (obj) {
      case ConnectivityResult.bluetooth:
        writer.writeByte(0);
        break;
      case ConnectivityResult.wifi:
        writer.writeByte(1);
        break;
      case ConnectivityResult.ethernet:
        writer.writeByte(2);
        break;
      case ConnectivityResult.mobile:
        writer.writeByte(3);
        break;
      case ConnectivityResult.none:
        writer.writeByte(4);
        break;
    }
  }
}
