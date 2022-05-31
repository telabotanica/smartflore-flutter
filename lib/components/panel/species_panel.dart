import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/cards/species_cover.dart';
import 'package:smartflore/components/list/species/species_list.dart';
import 'package:smartflore/components/map/map_widget.dart';

class SpeciesPanelWidget extends StatefulWidget {
  final bool isDraggable;
  final Widget body;

  const SpeciesPanelWidget(
      {Key? key, this.isDraggable = true, required this.body})
      : super(key: key);

  @override
  State<SpeciesPanelWidget> createState() => _SpeciesPanelWidgetState();
}

class _SpeciesPanelWidgetState extends State<SpeciesPanelWidget>
    with SingleTickerProviderStateMixin {
  final PanelController _panelController = PanelController();
  bool isPanelOpened = false;
  bool isPanelMoving = false;
  bool showMe = false;

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animation = Tween<double>(begin: 0, end: 300).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOutCubic))
      ..addListener(() {
        setState(() {});
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

  void setShowMe(bool show) {
    (show) ? controller.forward() : controller.reverse();
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
          minHeight: animation.value,
          controller: _panelController,
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
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 200,
                        child: SpeciesCoverWidget(
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Papaver_rhoeas_LC0050.jpg/675px-Papaver_rhoeas_LC0050.jpg',
                          title: 'Papaver Rhoeas',
                          position: LatLng(45.776896, 3.0900224),
                        ),
                      ),
                    ),
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
      child: SpeciesList(
        controller: scrollController,
      ),
    );
  }
}
