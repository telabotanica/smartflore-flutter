import 'package:flutter/material.dart';
import 'package:smartflore/components/panel/species_panel.dart';
import 'package:smartflore/components/panel/trails_panel.dart';
import 'package:smartflore/components/utils/connectivity_widget.dart';

class MapScreen extends StatefulWidget {
  final bool isAuth;
  const MapScreen({Key? key, required this.isAuth}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();

    if (widget.isAuth == true) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConnectivityWidget(
      child: DefaultTabController(
        length: 2,
        child:
            SpeciesPanelWidget(body: TrailsPanelWidget(isAuth: widget.isAuth)),
      ),
    ));
  }
}
