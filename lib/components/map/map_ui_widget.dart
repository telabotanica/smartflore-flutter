import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/map/trail_preview.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

class MapUIWidget extends StatelessWidget {
  final bool showTrailPreview;
  final double bottomPadding;
  const MapUIWidget(
      {Key? key, required this.bottomPadding, this.showTrailPreview = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MapWidget(),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            bottom:
                (showTrailPreview) ? 120 + bottomPadding : -65 + bottomPadding,
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
                const SizedBox(height: 25),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BlocBuilder<TrailBloc, TrailState>(
                      builder: (context, state) {
                        if (state is TrailLoadedState) {
                          return TrailPreview(
                              onPressCB: () {
                                BlocProvider.of<MapBloc>(context).add(
                                    const ChangeMapMode(
                                        mapMode: MapMode.trail));
                              },
                              index: 1,
                              id: state.trail.trail.properties.id,
                              title: state.trail.trail.properties.name,
                              length: state.trail.trail.properties.length,
                              image:
                                  'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                              position: LatLngUtils.listToLatLng(state.trail
                                  .trail.properties.centroid.coordinates));
                        }
                        return TrailPreview(
                            onPressCB: null,
                            isLoading: true,
                            index: 1,
                            id: '',
                            title: '',
                            length: 150,
                            image:
                                'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                            position: LatLng(0, 0));
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
