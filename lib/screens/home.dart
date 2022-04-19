import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      appBar: material.AppBar(
        title: Text(AppLocalizations.of(context)!.btn_all_trail),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(43.610769, 3.876716),
          zoom: 13.0,
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
                builder: (ctx) => Container(width: 10, height: 10, color: const Color(0xFF000000)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
