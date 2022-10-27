import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/cards/trail_preview.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/topbar/top_bar_create.dart';
import 'package:smartflore/components/topbar/top_bar_trail.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/layout.dart';

class MapUI extends StatefulWidget {
  final MapMode mapMode;
  final double bottomPadding;

  const MapUI({
    Key? key,
    required this.bottomPadding,
    this.mapMode = MapMode.overview,
  }) : super(key: key);

  @override
  State<MapUI> createState() => _MapUIState();
}

class _MapUIState extends State<MapUI> {
  GlobalKey trailPreviewUIKey = GlobalKey();
  double trailPreviewUIHeight = 0;
  late Box<bool> savedTrailsBox;
  bool isPreviewLocallySaved = false;

  @override
  void initState() {
    super.initState();
    // get the previously opened user box
    savedTrailsBox = Hive.box('savedTrails');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MapWidget(),
        AnimatedPositioned(
            top: 20,
            right: (widget.mapMode == MapMode.overview) ? 20 : -60,
            curve: Curves.easeInOutCubic,
            duration: const Duration(milliseconds: 300),
            child: SafeArea(
              child: SizedBox(
                width: 46,
                height: 46,
                child: FloatingActionButton(
                  heroTag: 'settings',
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    SmartFloreIcons.setting,
                    size: 20,
                    color: Color(0xFF12161E),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/settings');
                  },
                ),
              ),
            )),
        AnimatedPositioned(
            top: (widget.mapMode == MapMode.trail) ? 20 : -100,
            curve: Curves.easeInOutCubic,
            duration: const Duration(milliseconds: 300),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Center(child: BlocBuilder<TrailBloc, TrailState>(
                    builder: (context, state) {
                      if (state is TrailLoadedState) {
                        return TopBarTrail(
                          title: state.trail.displayName,
                          author: state.trail.author,
                        );
                      }
                      return Container();
                    },
                  ))),
            ))),
        AnimatedPositioned(
          top: (widget.mapMode == MapMode.create) ? 20 : -120,
          duration: const Duration(milliseconds: 300),
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: const TopBarCreate(
                    title: 'Le sentier le plus beau',
                    isRecording: true,
                    distance: '2.5km')),
          )),
        ),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            bottom: (widget.mapMode == MapMode.overview)
                ? 120 + widget.bottomPadding
                : (widget.mapMode == MapMode.preview)
                    ? 145 + LayoutUtils.getSizes(trailPreviewUIKey).height
                    : 120,
            left: 20,
            child: SizedBox(
              width: 46,
              height: 46,
              child: FloatingActionButton(
                  heroTag: 'target',
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
            )),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            bottom: (widget.mapMode == MapMode.create) ? 20 : -100,
            left: 20,
            child: SafeArea(
              child: SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Expanded(
                      child: RoundedButton(
                        label: 'Ajouter',
                        icon: SmartFloreIcons.addMarker,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1),
                        shape: BoxShape.circle,
                      ),
                      child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(2)),
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            )),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            bottom: (widget.mapMode == MapMode.preview)
                ? LayoutUtils.getSizes(trailPreviewUIKey).height - 30
                : -200,
            left: 20,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: BlocBuilder<TrailBloc, TrailState>(
                  builder: (context, state) {
                    if (state is TrailLoadedState) {
                      isPreviewLocallySaved =
                          (savedTrailsBox.get('trail_${state.trail.id}')) !=
                              null;
                      return BlocListener<SaveTrailBloc, SaveTrailState>(
                          listener: (context, saveState) {
                            setState(() {
                              isPreviewLocallySaved = (savedTrailsBox
                                      .get('trail_${state.trail.id}')) !=
                                  null;
                            });
                          },
                          child: TrailPreview(
                              key: trailPreviewUIKey,
                              onPressCB: () {
                                BlocProvider.of<MapBloc>(context).add(
                                    const ChangeMapMode(
                                        mapMode: MapMode.trail));
                              },
                              index: 1,
                              id: state.trail.id,
                              title: state.trail.displayName,
                              length: state.trail.pathLength,
                              image: state.trail.image.url,
                              position: state.trail.position.start,
                              nbOccurence: state.trail.occurrencesCount,
                              isDownloaded: isPreviewLocallySaved));
                    }
                    return TrailPreview(
                      key: trailPreviewUIKey,
                      onPressCB: null,
                      isLoading: true,
                      index: 1,
                      id: 1,
                      title: '',
                      length: 150,
                      position: LatLng(0, 0),
                      nbOccurence: 0,
                    );
                  },
                ),
              ),
            ))
      ],
    );
  }
}
