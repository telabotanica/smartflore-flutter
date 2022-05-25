import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/list/trail/trail_list.dart';
import 'package:smartflore/components/map/map_ui_widget.dart';
import 'package:smartflore/components/map/map_widget.dart';

class TrailsPanelWidget extends StatefulWidget {
  final bool isDraggable;
  const TrailsPanelWidget({Key? key, this.isDraggable = true})
      : super(key: key);

  @override
  State<TrailsPanelWidget> createState() => _TrailsPanelWidgetState();
}

class _TrailsPanelWidgetState extends State<TrailsPanelWidget> {
  final PanelController _panelController = PanelController();
  bool isPanelOpened = false;
  bool isPanelMoving = false;
  bool showTrailPreview = false;

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

    void trailPreviewPanel(bool show) {
      if (show) _panelController.close();
      setState(() {
        showTrailPreview = show;
      });
    }

    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        if (state is OnMapModeChanged) {
          if (state.mapMode == MapMode.preview) {
            trailPreviewPanel(true);
          } else if (state.mapMode == MapMode.overview ||
              state.mapMode == MapMode.trail) {
            trailPreviewPanel(false);
          }
        }
      },
      child: SlidingUpPanel(
          backdropEnabled: true,
          backdropOpacity: 0,
          backdropTapClosesPanel: true,
          parallaxEnabled: true,
          parallaxOffset: .5,
          maxHeight: screenH * 0.8,
          minHeight: 100 + bottomPadding,
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
                          isScrollable: false,
                          unselectedLabelColor: primary,
                          indicator: BoxDecoration(
                              color: primary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
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
              scrollController: scrollController, bottomPadding: bottomPadding),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          body: MapUIWidget(
            bottomPadding: bottomPadding,
            showTrailPreview: showTrailPreview,
          )),
    );
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
            TrailListPanelWidget(
              controller: scrollController,
              onPanUpdate: onPanUpdate,
            ),
            TrailListPanelWidget(
              controller: scrollController,
              onPanUpdate: onPanUpdate,
              trailsListType: TrailsListType.myTrails,
            ),
          ],
        ));
  }
}
