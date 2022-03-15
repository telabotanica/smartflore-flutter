import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
          attributionBuilder: (_) {
            return Container();
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 10.0,
              height: 10.0,
              point: LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                  width: 10, height: 10, color: const Color(0xFF000000)),
            ),
          ],
        ),
      ],
    );
  }
}
