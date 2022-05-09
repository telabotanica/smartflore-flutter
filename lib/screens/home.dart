import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/map/panel_widget.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

import '../components/map/map_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TrailsBloc>(context).add(LoadTrailsDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).colorScheme.primary;
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          SlidingUpPanel(
              parallaxEnabled: true,
              parallaxOffset: .5,
              maxHeight: MediaQuery.of(context).size.height - 110,
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
                              isScrollable: false,
                              unselectedLabelColor: primary,
                              indicator: BoxDecoration(
                                  color: primary, borderRadius: const BorderRadius.all(Radius.circular(6))),
                              tabs: const [Tab(text: 'Tous les sentiers'), Tab(text: 'Mes sentiers')]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              panelBuilder: (scrollController) => _buildSlidingPanel(scrollController: scrollController),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
              body: Stack(
                children: [
                  const MapWidget(),
                  Positioned(
                      bottom: 100,
                      left: 20,
                      child: SafeArea(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 46,
                              height: 46,
                              child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  child: const Icon(
                                    SmartFloreIcons.qrcode,
                                    color: Color(0xFF12161E),
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              width: 46,
                              height: 46,
                              child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  child: const Icon(
                                    SmartFloreIcons.target,
                                    color: Color(0xFF12161E),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<MapBloc>(context).add(RequestCenterMapEvent());
                                  }),
                            ),
                          ],
                        ),
                      ))
                ],
              )),
          Positioned(
              top: 0,
              right: 20,
              child: SafeArea(
                child: SizedBox(
                  width: 46,
                  height: 46,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
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

  Widget _buildSlidingPanel({
    required ScrollController scrollController,
  }) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            PanelWidget(
              controller: scrollController,
            ),
            PanelWidget(
              controller: scrollController,
              trailsListType: TrailsListType.myTrails,
            ),
          ],
        ));
  }
}

//1 - cleaning panelWidget component
//2 - creating trail list item widget
//3 - create mooc file and adding business logic
//4 - find a way to update map depending of the selected tab
