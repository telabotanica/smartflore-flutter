import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/mytrails_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/list/trail/trails_list.dart';
import 'package:smartflore/components/map/map_ui.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrailsPanelWidget extends StatefulWidget {
  final bool isDraggable;
  final bool isAuth;
  const TrailsPanelWidget(
      {Key? key, required this.isAuth, this.isDraggable = true})
      : super(key: key);

  @override
  State<TrailsPanelWidget> createState() => _TrailsPanelWidgetState();
}

class _TrailsPanelWidgetState extends State<TrailsPanelWidget>
    with SingleTickerProviderStateMixin {
  final PanelController _panelController = PanelController();
  bool isPanelOpened = false;
  bool isPanelMoving = false;
  MapMode _mapMode = MapMode.overview;
  late Box<bool> savedTrailsBox;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    // get the previously opened user box
    BlocProvider.of<TrailsBloc>(context)
        .add(const TrailsEvent.loadTrailsData());

    savedTrailsBox = Hive.box('savedTrails');
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        if (tabController.index == 1 && widget.isAuth == true) {
          BlocProvider.of<MyTrailsBloc>(context)
              .add(const MyTrailsEvent.loadTrailsData());
        }
      }
    });
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

  void setMapMode(MapMode mapMode) {
    if (mapMode != MapMode.overview) _panelController.close();
    setState(() {
      _mapMode = mapMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).colorScheme.primary;
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom / 4;

    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        state.maybeWhen(
            onMapModeChanged: (MapMode mapMode) {
              setMapMode(mapMode);
            },
            orElse: () {});
      },
      child: SlidingUpPanel(
          backdropEnabled: true,
          backdropOpacity: 0,
          backdropTapClosesPanel: true,
          parallaxEnabled: true,
          parallaxOffset: .5,
          maxHeight: screenH * 0.8,
          minHeight: (_mapMode == MapMode.create) ? 0 : 100 + bottomPadding,
          isDraggable: widget.isDraggable,
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
                          overlayColor: MaterialStateProperty.all(Colors.white),
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
                          controller: tabController,
                          isScrollable: false,
                          unselectedLabelColor: primary,
                          indicator: BoxDecoration(
                              color: primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          tabs: [
                            Tab(
                                child: Text(
                              AppLocalizations.of(context).btn_all_trail,
                              style: const TextStyle(fontSize: 16),
                            )),
                            Tab(
                                child: Text(
                                    AppLocalizations.of(context).btn_my_trail,
                                    style: const TextStyle(fontSize: 16)))
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          panelBuilder: (scrollController) => _buildSlidingPanel(
              scrollController: scrollController,
              tabController: tabController,
              bottomPadding: bottomPadding),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          body: MapUI(
            bottomPadding: bottomPadding,
            mapMode: _mapMode,
          )),
    );
  }

  Widget _buildSlidingPanel({
    required ScrollController scrollController,
    required TabController tabController,
    double bottomPadding = 0,
  }) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            TrailsList(
                controller: scrollController,
                onPanUpdate: onPanUpdate,
                savedTrailsBox: savedTrailsBox,
                isAuth: widget.isAuth),
            TrailsList(
                controller: scrollController,
                onPanUpdate: onPanUpdate,
                trailsListType: TrailsListType.myTrails,
                savedTrailsBox: savedTrailsBox,
                isAuth: widget.isAuth),
          ],
        ));
  }

  @override
  void dispose() {
    tabController.removeListener(() {});
    tabController.dispose();
    super.dispose();
  }
}
