import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/panel/species_panel.dart';
import 'package:smartflore/components/panel/trails_panel.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TrailsBloc>(context).add(LoadTrailsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: DefaultTabController(
      length: 2,
      child: SpeciesPanelWidget(body: TrailsPanelWidget()),
    ));
  }
}
