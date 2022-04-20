import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        rotationWinGestures: MultiFingerGesture.none,
        center: LatLng(43.610769, 3.876716),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
          retinaMode: true,
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 10.0,
              height: 10.0,
              point: LatLng(43.610769, 3.876716),
              builder: (ctx) => Container(
                  width: 10, height: 10, color: const Color(0xFF000000)),
            ),
          ],
        ),
      ],
    );
  }
}
