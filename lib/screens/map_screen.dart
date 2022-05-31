import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/panel/species_panel.dart';
import 'package:smartflore/components/panel/trails_panel.dart';
import 'package:smartflore/components/top_bar.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

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
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          const SpeciesPanelWidget(body: TrailsPanelWidget()),
          SafeArea(
              child: Center(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: const Center(
                          child: TopBar(
                        title: 'Le Square Blaise Pascal',
                        author: 'Blaise Pascal',
                      ))))),
          Positioned(
              top: 20,
              right: 20,
              child: SafeArea(
                child: SizedBox(
                  width: 46,
                  height: 46,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Icon(
                      SmartFloreIcons.setting,
                      size: 20,
                      color: Color(0xFF12161E),
                    ),
                    onPressed: () {},
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
