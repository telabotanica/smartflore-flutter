import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/map/trail_preview.dart';
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
  bool test = false;

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
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom / 4;
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
              maxHeight: screenH * 0.8,
              minHeight: 100 + bottomPadding,
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
                width: screenW,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onPanUpdate: (details) => onPanUpdate(details),
                    child: Column(
                      children: [
                        Container(
                          width: screenW,
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
              panelBuilder: (scrollController) => _buildSlidingPanel(
                  scrollController: scrollController,
                  bottomPadding: bottomPadding),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(24)),
              body: Stack(
                children: [
                  const MapWidget(),
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOutCubic,
                      bottom:
                          (test) ? 120 + bottomPadding : -60 + bottomPadding,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                onPressed: () {
                                  setState(() {
                                    test = (test) ? false : true;
                                  });
                                }),
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
                          const SizedBox(height: 20),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 40,
                              child: TrailPreview(
                                  index: 1,
                                  title: 'test',
                                  length: 150,
                                  image:
                                      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                                  position: LatLng(0, 0)),
                            ),
                          )
                        ],
                      ))
                ],
              )),
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

  Widget _buildSlidingPanel({
    required ScrollController scrollController,
    double bottomPadding = 0,
  }) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
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
