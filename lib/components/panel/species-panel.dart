import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/panel/trail-list-panel.dart';

class SpeciesPanelWidget extends StatefulWidget {
  final bool isDraggable;
  final Widget body;

  const SpeciesPanelWidget(
      {Key? key, this.isDraggable = true, required this.body})
      : super(key: key);

  @override
  State<SpeciesPanelWidget> createState() => _SpeciesPanelWidgetState();
}

class _SpeciesPanelWidgetState extends State<SpeciesPanelWidget> {
  final PanelController _panelController = PanelController();
  bool isPanelOpened = false;
  bool isPanelMoving = false;
  bool showMe = false;

  void onPanUpdate(details) {
    print('test');
    // Swiping down
    if (details.delta.dy > 4 && isPanelOpened && !isPanelMoving) {
      setState(() {
        isPanelMoving = true;
      });
      _panelController.close();
    }
  }

  void setShowMe(bool show) {
    setState(() {
      showMe = show;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom / 4;

    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        if (state is OnMapModeChanged) {
          if (state.mapMode == MapMode.trail) {
            setShowMe(true);
          } else {
            setShowMe(false);
          }
        }
      },
      child: SlidingUpPanel(
          backdropEnabled: true,
          backdropOpacity: 0,
          backdropTapClosesPanel: true,
          maxHeight: screenH * 0.8,
          minHeight: showMe ? 300 : 0,
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
                    Container(height: 46, color: Colors.red),
                  ],
                ),
              ),
            ),
          ),
          panelBuilder: (scrollController) => _buildSlidingPanel(
              scrollController: scrollController, bottomPadding: bottomPadding),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          body: widget.body),
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
