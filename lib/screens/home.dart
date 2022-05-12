import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/panel/panel_widget.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PanelController _panelController = PanelController();
  bool isPanelOpened = false;
  bool isPanelMoving = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TrailsBloc>(context).add(LoadTrailsDataEvent());
  }

  void onPanUpdate(details) {
    // Swiping down
    if (details.delta.dy > 4 && isPanelOpened && !isPanelMoving) {
      setState(() {
        isPanelMoving = true;
      });
      _panelController.close();
    }
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
              backdropEnabled: true,
              backdropOpacity: 0,
              backdropTapClosesPanel: true,
              parallaxEnabled: true,
              parallaxOffset: .5,
              maxHeight: MediaQuery.of(context).size.height - 110,
              minHeight: 110,
              onPanelOpened: () {
                setState(() {
                  isPanelMoving = false;
                  isPanelOpened = true;
                });
              },
              onPanelClosed: () {
                setState(() {
                  isPanelMoving = false;
                  isPanelOpened = false;
                });
              },
              controller: _panelController,
              header: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onPanUpdate: (details) => onPanUpdate(details),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 20,
                          color: Colors.transparent,
                          child: TextButton(
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () =>
                                // Needed because the builtin panelController.isPanelOpen is not working
                                (isPanelOpened)
                                    ? _panelController.close()
                                    : _panelController.open(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Color(0xFFD8DCD8)),
                              width: 45,
                              height: 4,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 46,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: TabBar(
                              isScrollable: false,
                              unselectedLabelColor: primary,
                              indicator: BoxDecoration(
                                  color: primary,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                              tabs: const [
                                Tab(text: 'Tous les sentiers'),
                                Tab(text: 'Mes sentiers')
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              panelBuilder: (scrollController) =>
                  _buildSlidingPanel(scrollController: scrollController),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
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
                                    BlocProvider.of<MapBloc>(context)
                                        .add(RequestCenterMapEvent());
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
              onPanUpdate: onPanUpdate,
            ),
            PanelWidget(
              controller: scrollController,
              onPanUpdate: onPanUpdate,
              trailsListType: TrailsListType.myTrails,
            ),
          ],
        ));
  }
}
