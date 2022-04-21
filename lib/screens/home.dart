import 'package:flutter/material.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/components/map/panel_widget.dart';

import '../components/map/map_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).colorScheme.primary;
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: .5,
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          minHeight: 110,
          header: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)), color: Color(0xFFD8DCD8)),
                      width: 45,
                      height: 4,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 46,
                      decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.primary, width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(6))),
                      child: TabBar(
                          unselectedLabelColor: primary,
                          indicator:
                              BoxDecoration(color: primary, borderRadius: const BorderRadius.all(Radius.circular(6))),
                          tabs: const [Tab(text: "Tous les sentiers"), Tab(text: "Mes sentiers")]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          panelBuilder: (controller) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
              child: TabBarView(
                children: [
                  PanelWidget(
                    controller: controller,
                  ),
                  PanelWidget(
                    controller: controller,
                  ),
                ],
              )),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          body: const MapWidget()),
    ));
  }
}
