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
    return Scaffold(
      body: SlidingUpPanel(
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
                    Column(
                      children: [
                        Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border.all(color: Theme.of(context).colorScheme.primary, width: 1),
                              borderRadius: const BorderRadius.all(Radius.circular(6))),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 46,
                                  child: TextButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
                                          overlayColor: MaterialStateProperty.all(const Color(0x33FFFFFF))),
                                      onPressed: () {},
                                      child: const Text(
                                        "Tous les sentiers",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 46,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Mes sentiers",
                                        style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        OutlinedButton.icon(
                          onPressed: () {
                            // Respond to button press
                          },
                          icon: Icon(Icons.add, size: 18),
                          label: Text("Scanner un sentier"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          panelBuilder: (controller) => Padding(
                padding: const EdgeInsets.fromLTRB(20, 160, 20, 20),
                child: PanelWidget(
                  controller: controller,
                ),
              ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          body: const MapWidget()),
    );
  }
}
