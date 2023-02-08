import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/cards/taxon_cover.dart';
import 'package:smartflore/components/list/species/species_list.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/models/trail/trail_model.dart';

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
  int currentOccurence = 0;
  TrailDetails? currentTrail;
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
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom / 4;

    return MultiBlocListener(
      listeners: [
        BlocListener<MapBloc, MapState>(
          listener: (context, state) {
            state.maybeWhen(
                onMapModeChanged: (MapMode mapMode) {
                  if (mapMode == MapMode.trail) {
                    setShowMe(true);
                  } else {
                    setShowMe(false);
                    if (isPanelOpened) _panelController.close();
                  }
                },
                orElse: () {});
          },
        ),
        BlocListener<TrailBloc, TrailState>(
          listener: (context, state) {
            if (state is TrailLoadedState) {
              setState(() {
                currentOccurence = 0;
                currentTrail = state.trail;
              });
            }
          },
        ),
        BlocListener<WalkBloc, WalkState>(
          listener: (context, state) {
            if (state is OnOccurrenceSelected) {
              setState(() {
                currentOccurence = state.occurenceID;
              });
            }
          },
        ),
      ],
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
                    _addCover()
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

  Widget _addCover() {
    final species = currentTrail?.occurrences[currentOccurence];
    if (species == null) return Container();
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            height: 200,
            child: TaxonCover(
              taxonId: species.taxon.nameId,
              taxonRepo: species.taxon.taxonRepository,
              image: (species.images.isNotEmpty)
                  ? species.images[0].url
                  : 'https://lightwidget.com/wp-content/uploads/local-file-not-found.png',
              vernacularName: species.taxon.vernacularNames.isNotEmpty
                  ? species.taxon.vernacularNames[0]
                  : '',
              scientificName: species.taxon.scientificName,
              position: species.position,
            ),
          ),
        ),
        Container(
            height: 25,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white.withOpacity(1),
                  Colors.white.withOpacity(0)
                ])))
      ],
    );
  }

  Widget _buildSlidingPanel({
    required ScrollController scrollController,
    double bottomPadding = 0,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 225, 20, 0),
      child: SpeciesList(
        controller: scrollController,
        selectedID: currentOccurence,
      ),
    );
  }
}
