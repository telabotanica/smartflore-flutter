import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/cards/trail_preview.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/top_bar.dart';
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
            right: (widget.mapMode == MapMode.trail) ? -60 : 20,
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
                        return TopBar(
                          title: state.trail.displayName,
                          author: state.trail.author,
                        );
                      }
                      return Container();
                    },
                  ))),
            ))),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            bottom: (widget.mapMode == MapMode.preview)
                ? 120 + widget.bottomPadding
                : (LayoutUtils.getSizes(trailPreviewUIKey) == null)
                    ? widget.bottomPadding + 95 - 154
                    : widget.bottomPadding +
                        95 -
                        LayoutUtils.getSizes(trailPreviewUIKey)!.height,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*SizedBox(
                  width: 46,
                  height: 46,
                  child: FloatingActionButton(
                      heroTag: 'qrCode',
                      backgroundColor: Colors.white,
                      child: const Icon(
                        SmartFloreIcons.qrcode,
                        color: Color(0xFF12161E),
                        size: 20,
                      ),
                      onPressed: () {}),
                ),*/
                const SizedBox(height: 12),
                SizedBox(
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
                ),
                const SizedBox(height: 25),
                Center(
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
                )
              ],
            ))
      ],
    );
  }
}
