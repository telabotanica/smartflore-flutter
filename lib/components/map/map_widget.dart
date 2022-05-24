import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/map/marker_condensed.dart';
import 'package:smartflore/components/map/marker_me.dart';
import 'package:smartflore/components/map/marker_with_bg.dart';
import 'package:smartflore/models/trail/trail_model.dart' as trail;
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

enum MapMode { overview, preview, focus }

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> with TickerProviderStateMixin {
  LatLng currentLocation = LatLng(43.610769, 3.876716);
  trail.Trail? trailData;
  Trails? trailsData;
  MapMode mapMode = MapMode.overview;

  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  void setMapMode(MapMode mapMode) {
    if (this.mapMode != mapMode) {
      setState(() {
        this.mapMode = mapMode;
      });
    }
  }

  void recenter() {
    _animatedMapMove(currentLocation, _mapController.zoom);
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final _latTween = Tween<double>(
        begin: _mapController.center.latitude, end: destLocation.latitude);
    final _lngTween = Tween<double>(
        begin: _mapController.center.longitude, end: destLocation.longitude);
    final _zoomTween = Tween<double>(begin: _mapController.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    var controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      _mapController.move(
          LatLng(_latTween.evaluate(animation), _lngTween.evaluate(animation)),
          _zoomTween.evaluate(animation));
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<GeolocationBloc, GeolocationState>(
          listener: (context, state) {
            if (state is LocationUpdatedState) {
              setState(() {
                currentLocation =
                    LatLng(state.position.latitude, state.position.longitude);
                //_mapController.move(LatLng(currentLocation.latitude, currentLocation.longitude), _mapController.zoom);
              });
            }
          },
        ),
        BlocListener<TrailBloc, TrailState>(
          listener: (context, state) {
            if (state is TrailLoadedState) {
              BlocProvider.of<MapBloc>(context)
                  .add(const ChangeMapMode(mapMode: MapMode.preview));

              setState(() {
                trailData = state.trail;

                CenterZoom centerZoom = _mapController.centerZoomFitBounds(
                    LatLngBounds.fromPoints(
                        trailData!.trail.geometry.coordinates));
                //workaround to make sure the center of the map is slightly higher.
                centerZoom.center.latitude -= 0.0008;
                _mapController.move(centerZoom.center, centerZoom.zoom);
              });
            }
          },
        ),
        BlocListener<TrailsBloc, TrailsDataState>(
          listener: (context, state) {
            if (state is TrailsDataLoadedState) {
              setMapMode(MapMode.overview);
              setState(() {
                trailsData = state.trails;
              });
            }
          },
        ),
        BlocListener<MapBloc, MapState>(
          listener: (context, state) {
            if (state is OnRecenterMap) {
              recenter();
            } else if (state is OnMapModeChanged) {
              setMapMode(state.mapMode);
            }
          },
        ),
      ],
      child: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          rotationWinGestures: MultiFingerGesture.none,
          center: currentLocation,
          interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
          zoom: 16.0,
          maxZoom: 19,
          onTap: (tapPos, LatLng latLng) {
            BlocProvider.of<MapBloc>(context)
                .add(const ChangeMapMode(mapMode: MapMode.overview));
          },
        ),
        layers: [
          TileLayerOptions(
              maxZoom: 20,
              maxNativeZoom: 20,
              urlTemplate:
                  'https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
              retinaMode: true,
              tileProvider: const CachedTileProvider()),
          MarkerLayerOptions(
            markers: [
              Marker(
                  anchorPos: AnchorPos.align(AnchorAlign.center),
                  width: 38.0,
                  height: 38.0,
                  point: currentLocation,
                  builder: (ctx) => const MarkerMe()),
            ],
          ),
          if (mapMode == MapMode.overview) ...setupOverviewMode(),
          if (mapMode == MapMode.preview) ...setupPreviewMode(),
          ...setupOverviewMode(fade: true),
          if (mapMode == MapMode.focus) ...setupFocusMode(),
        ],
      ),
    );
  }

  List<LayerOptions> setupOverviewMode({bool fade = false}) {
    return [
      MarkerLayerOptions(
          markers: trailsData != null
              ? trailsData!.referentials.map((referential) {
                  return Marker(
                    anchorPos: AnchorPos.align(AnchorAlign.center),
                    width: 38.0,
                    height: 38.0,
                    point: LatLngUtils.listToLatLng(
                        referential.trail.centroid.coordinates),
                    builder: (ctx) => IconButton(
                        onPressed: () {
                          BlocProvider.of<MapBloc>(context).add(
                              RequestTrailPreview(trailID: referential.key));
                        },
                        icon: AnimatedOpacity(
                            opacity: fade
                                ? (trailData != null &&
                                        trailData!.trail.properties.id ==
                                            referential.key)
                                    ? 0
                                    : 0.5
                                : 1,
                            duration: Duration(
                                milliseconds: (trailData != null &&
                                        trailData!.trail.properties.id ==
                                            referential.key)
                                    ? 0
                                    : 500),
                            child: Icon(SmartFloreIcons.marker,
                                size: 38,
                                color: Theme.of(context).colorScheme.surface))),
                  );
                }).toList()
              : []),
    ];
  }

  List<LayerOptions> setupPreviewMode() {
    return [
      //PATH
      PolylineLayerOptions(
          polylineCulling: true,
          polylines: (trailData != null)
              ? [
                  Polyline(
                      strokeWidth: 4,
                      isDotted: true,
                      color: Theme.of(context).colorScheme.primary,
                      points: trailData!.trail.geometry.coordinates)
                ]
              : []),
      //STARTING AND END POINTS
      MarkerLayerOptions(
          markers: trailData != null
              ? [
                  Marker(
                    anchorPos: AnchorPos.exactly(Anchor(0, -20)),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.trail.geometry.coordinates[
                        trailData!.trail.geometry.coordinates.length - 1],
                    builder: (ctx) => const MarkerWithBG(
                      icon: SmartFloreIcons.markerEnd,
                      size: 39,
                      color: Color(0xFFF47070),
                    ),
                  ),
                  Marker(
                    anchorPos: AnchorPos.exactly(Anchor(0, -20)),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.trail.geometry.coordinates[0],
                    builder: (ctx) => const MarkerWithBG(
                      icon: SmartFloreIcons.markerStart,
                      size: 39,
                      color: Color(0xFF3EB17B),
                    ),
                  ),
                ]
              : []),
    ];
  }

  List<LayerOptions> setupFocusMode() {
    return [
      //PATH
      PolylineLayerOptions(
          polylineCulling: true,
          polylines: (trailData != null)
              ? [
                  Polyline(
                      strokeWidth: 4,
                      isDotted: true,
                      color: Theme.of(context).colorScheme.primary,
                      points: trailData!.trail.geometry.coordinates)
                ]
              : []),
      //STARTING AND END POINTS
      MarkerLayerOptions(
          markers: trailData != null
              ? [
                  Marker(
                    anchorPos: AnchorPos.exactly(Anchor(0, -20)),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.trail.geometry.coordinates[
                        trailData!.trail.geometry.coordinates.length - 1],
                    builder: (ctx) => const MarkerWithBG(
                      icon: SmartFloreIcons.markerEnd,
                      size: 39,
                      color: Color(0xFFF47070),
                    ),
                  ),
                  Marker(
                    anchorPos: AnchorPos.exactly(Anchor(0, -20)),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.trail.geometry.coordinates[0],
                    builder: (ctx) => const MarkerWithBG(
                      icon: SmartFloreIcons.markerStart,
                      size: 39,
                      color: Color(0xFF3EB17B),
                    ),
                  ),
                ]
              : []),
      //OTHERS POINTS
      MarkerLayerOptions(
          markers: trailData != null
              ? trailData!.occurrences.map((occurrence) {
                  return Marker(
                    anchorPos: AnchorPos.align(AnchorAlign.center),
                    width: 18.0,
                    height: 18.0,
                    point: LatLngUtils.listToLatLng(
                        occurrence.geometry.coordinates),
                    builder: (ctx) => const MarkerCondensed(),
                  );
                }).toList()
              : []),
    ];
  }
}

class CachedTileProvider extends TileProvider {
  const CachedTileProvider();
  @override
  ImageProvider getImage(Coords<num> coords, TileLayerOptions options) {
    return CachedNetworkImageProvider(
      getTileUrl(coords, options),
    );
  }
}

/*
// PREVIEW MODE
- Display preview card on top of the map
- Display preview path on map
- make other trails markers opacity 0.3
- eventually (depending how it renders) hide selected trail marker 
=> TODO
- user bloc to update map mode this way we can display the card on top of the map AND update the map content
- trigger event ChangeMapMode when trail data received
*/
