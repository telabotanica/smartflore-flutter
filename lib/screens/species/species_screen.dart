import 'package:flutter/material.dart';
import 'package:smartflore/screens/species/species_description_screen.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({Key? key}) : super(key: key);

  @override
  State<SpeciesScreen> createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          shadowColor: const Color(0x00000000),
          title: const Text("nom de l'espèce",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        body: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SpeciesDescription(),
                      SpeciesDescription(),
                      SpeciesDescription(),
                      SpeciesDescription(),
                    ],
                  ),
                ),
                TabBar(
                    isScrollable: false,
                    unselectedLabelColor: Theme.of(context).colorScheme.primary,
                    indicator: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    tabs: const [
                      Tab(text: '1'),
                      Tab(text: '2'),
                      Tab(text: '3'),
                      Tab(text: '4'),
                    ]),
              ],
            )));
  }
}
