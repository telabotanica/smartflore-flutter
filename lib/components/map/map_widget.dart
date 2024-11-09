import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart' hide MapEvent;
import 'package:latlong2/latlong.dart' hide Path;
import 'package:smartflore/_env/app_env.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/map/marker_me.dart';
import 'package:smartflore/components/map/marker_occurrence.dart';
import 'package:smartflore/components/map/marker_with_bg.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

enum MapMode { overview, preview, trail, create }

enum FollowMode { free, locked }

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> with TickerProviderStateMixin {
  LatLng currentLocation = const LatLng(43.610769, 3.876716);
  TrailDetails? trailData;
  List<Trail>? trailsData;
  Path? createPath;
  List<Occurrence>? createOccurrences;
  MapMode mapMode = MapMode.overview;
  int? selectedOccurence;
  bool forceOccurenceUpdate = false;

  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    selectedOccurence = 0;
  }

  void setMapMode(MapMode mapMode) {
    if (this.mapMode != mapMode) {
      setState(() {
        this.mapMode = mapMode;
      });
    }
  }

  void setSelectedOccurrence(int occurrenceID) {
    if (selectedOccurence != occurrenceID) {
      if (trailData != null) {
        Occurrence occurrence = trailData!.occurrences[occurrenceID];
        double lat = (_mapController.camera.zoom > 16)
            ? occurrence.position.latitude - 0.0008 / (_mapController.camera.zoom - 16)
            : occurrence.position.latitude - 0.0008;
        _animatedMapMove(LatLng(lat, occurrence.position.longitude), _mapController.camera.zoom);
      }
      setState(() {
        selectedOccurence = occurrenceID;
        forceOccurenceUpdate = true;
      });
    }
  }

  void recenter() {
    _animatedMapMove(currentLocation, _mapController.camera.zoom);
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final latTween = Tween<double>(begin: _mapController.camera.center.latitude, end: destLocation.latitude);
    final lngTween = Tween<double>(begin: _mapController.camera.center.longitude, end: destLocation.longitude);
    final zoomTween = Tween<double>(begin: _mapController.camera.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    var controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    Animation<double> animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      _mapController.move(
          LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)), zoomTween.evaluate(animation));
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
            state.maybeWhen(locationUpdate: (position) {
              setState(() {
                currentLocation = LatLng(position.latitude, position.longitude);
              });
            }, orElse: () {
              return null;
            });
          },
        ),
        BlocListener<TrailBloc, TrailState>(
          listener: (context, state) {
            if (state is TrailLoadedState) {
              BlocProvider.of<MapBloc>(context).add(const MapEvent.changeMapMode(MapMode.preview));
              setState(() {
                trailData = state.trail;

                _mapController.fitCamera(CameraFit.coordinates(coordinates: trailData!.path.coordinates));

                /*
                CenterZoom centerZoom =
                    _mapController.centerZoomFitBounds(LatLngBounds.fromPoints(trailData!.path.coordinates));

                _mapController.fitCamera(CameraFit.coordinates(coordinates: trailData!.path.coordinates));
                //workaround to make sure the center of the map is slightly higher.
                centerZoom.center.latitude -= 0.0008;
                _animatedMapMove(centerZoom.center, centerZoom.zoom);
                */
              });
            }
          },
        ),
        BlocListener<TrailsBloc, TrailsState>(
          listener: (context, state) {
            state.maybeWhen(
                dataLoaded: (trailsData) {
                  if (mapMode == MapMode.overview) {
                    setState(() {
                      this.trailsData = trailsData;
                    });
                  } else {
                    this.trailsData = trailsData;
                  }
                },
                orElse: () {});
          },
        ),
        BlocListener<CreateBloc, CreateState>(
          listener: (context, state) {
            state.maybeWhen(
                start: () {
                  setState(() {
                    mapMode = MapMode.create;
                    createPath = null;
                    createOccurrences = null;
                  });
                },
                updatePath: (Path path) {
                  setState(() {
                    createPath = path;
                  });
                },
                taxonAdded: (occurrences) {
                  setState(() {
                    createOccurrences = occurrences;
                  });
                },
                orElse: () {});
          },
        ),
        BlocListener<MapBloc, MapState>(
          listener: (context, state) {
            state.maybeWhen(
                onRecenterMap: () => recenter(),
                onMapModeChanged: (MapMode mapMode) {
                  setMapMode(mapMode);
                },
                orElse: () {});
          },
        ),
        BlocListener<WalkBloc, WalkState>(
          listener: (context, state) {
            if (state is OnOccurrenceSelected) {
              setSelectedOccurrence(state.occurenceID);
            }
          },
        ),
      ],
      child: PopScope(
        onPopInvokedWithResult: (didPop, result) async {
          if (mapMode != MapMode.overview) {
            BlocProvider.of<MapBloc>(context)
                .add(MapEvent.changeMapMode((mapMode == MapMode.trail) ? MapMode.preview : MapMode.overview));
            return;
          } else {
            return;
          }
        },
        child: FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            interactionOptions: const InteractionOptions(
              rotationWinGestures: MultiFingerGesture.none,
              flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
            ),
            initialCenter: currentLocation,
            initialZoom: 16.0,
            maxZoom: 19,
            onTap: (tapPos, LatLng latLng) {
              if (mapMode != MapMode.trail && mapMode != MapMode.create) {
                BlocProvider.of<MapBloc>(context).add(const MapEvent.changeMapMode(MapMode.overview));
              }
            },
          ),
          children: [
            TileLayer(
                maxZoom: 20,
                maxNativeZoom: 20,
                urlTemplate: '${AppEnv().osmUrl}{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
                retinaMode: true,
                tileProvider: CachedTileProvider()),
            MarkerLayer(
              markers: [
                Marker(
                    alignment: Alignment.center,
                    width: 38.0,
                    height: 38.0,
                    point: currentLocation,
                    child: const MarkerMe()),
              ],
            ),
            if (mapMode == MapMode.overview) ...setupOverviewMode(),
            if (mapMode == MapMode.preview) ...setupPreviewMode(),
            if (mapMode == MapMode.trail) ...setupFocusMode(),
            if (mapMode == MapMode.create) ...setupCreateMode(),
          ],
        ),
      ),
    );
  }

  List<Widget> setupOverviewMode({bool fade = false}) {
    return [
      MarkerLayer(
          markers: trailsData != null
              ? trailsData!.map((trail) {
                  LatLng startPos = (trail.position != null && trail.position?.start != null)
                      ? trail.position!.start
                      : const LatLng(0, 0);
                  return Marker(
                    alignment: Alignment.center,
                    width: 38.0,
                    height: 38.0,
                    point: startPos,
                    child: IconButton(
                        onPressed: () {
                          BlocProvider.of<MapBloc>(context).add(MapEvent.requestTrailPreview(trail.id));
                        },
                        icon: AnimatedOpacity(
                            opacity: fade
                                ? (trailData != null && trailData!.id == trail.id)
                                    ? 0
                                    : 0.5
                                : 1,
                            duration:
                                Duration(milliseconds: (trailData != null && trailData!.id == trail.id) ? 0 : 500),
                            child:
                                Icon(SmartFloreIcons.marker, size: 38, color: Theme.of(context).colorScheme.tertiary))),
                  );
                }).toList()
              : []),
    ];
  }

  List<Widget> setupPreviewMode() {
    return [
      //PATH
      PolylineLayer<Object>(
          polylines: (trailData != null)
              ? [
                  Polyline(
                      strokeWidth: 4,
                      pattern: const StrokePattern.dotted(),
                      color: Theme.of(context).colorScheme.primary,
                      points: trailData!.path.coordinates)
                ]
              : []),
      //STARTING AND END POINTS
      MarkerLayer(
          markers: trailData != null
              ? [
                  Marker(
                    alignment: const Alignment(0, -20),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.position.start,
                    child: const MarkerWithBG(
                      icon: SmartFloreIcons.markerEnd,
                      size: 39,
                      color: Color(0xFFF47070),
                    ),
                  ),
                  Marker(
                    alignment: const Alignment(0, -20),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.position.end,
                    child: const MarkerWithBG(
                      icon: SmartFloreIcons.markerStart,
                      size: 39,
                      color: Color(0xFF3EB17B),
                    ),
                  ),
                ]
              : []),
      ...setupOverviewMode(fade: true)
    ];
  }

  List<Widget> setupFocusMode() {
    return [
      //PATH
      PolylineLayer<Object>(
          polylines: (trailData != null)
              ? [
                  Polyline(
                      strokeWidth: 4,
                      pattern: const StrokePattern.dotted(),
                      color: Theme.of(context).colorScheme.primary,
                      points: trailData!.path.coordinates)
                ]
              : []),
      //STARTING AND END POINTS
      MarkerLayer(
          markers: trailData != null
              ? [
                  Marker(
                    alignment: const Alignment(0, -20),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.path.coordinates[trailData!.path.coordinates.length - 1],
                    child: const MarkerWithBG(
                      icon: SmartFloreIcons.markerEnd,
                      size: 39,
                      color: Color(0xFFF47070),
                    ),
                  ),
                  Marker(
                    alignment: const Alignment(0, -20),
                    width: 18.0,
                    height: 18.0,
                    point: trailData!.path.coordinates[0],
                    child: const MarkerWithBG(
                      icon: SmartFloreIcons.markerStart,
                      size: 39,
                      color: Color(0xFF3EB17B),
                    ),
                  ),
                ]
              : []),
      //OTHERS POINTS
      MarkerLayer(markers: trailData != null ? getOrderedMarkerList(trailData!.occurrences) : []),
    ];
  }

  List<Widget> setupCreateMode() {
    return [
      PolylineLayer<Object>(
          polylines: (createPath != null)
              ? [
                  Polyline(
                      strokeWidth: 4,
                      pattern: const StrokePattern.dotted(),
                      color: Theme.of(context).colorScheme.primary,
                      points: createPath!.coordinates)
                ]
              : []),
      MarkerLayer(
          markers: createPath != null && createPath!.coordinates.isNotEmpty
              ? [
                  Marker(
                    alignment: const Alignment(0, -20),
                    width: 18.0,
                    height: 18.0,
                    point: createPath!.coordinates[0],
                    child: const MarkerWithBG(
                      icon: SmartFloreIcons.markerStart,
                      size: 39,
                      color: Color(0xFF3EB17B),
                    ),
                  ),
                ]
              : []),
      MarkerLayer(markers: createOccurrences != null ? getOrderedMarkerList(createOccurrences!) : []),
    ];
  }

  List<Marker> getOrderedMarkerList(List<Occurrence> occurrences) {
    List<Marker> markerList = [];
    Marker marker;
    Marker? selectedMarker;

    occurrences.mapIndexed((index, occurrence) {
      marker = Marker(
        key: Key(index.toString()),
        width: index == selectedOccurence && forceOccurenceUpdate ? 60 : 35,
        height: index == selectedOccurence && forceOccurenceUpdate ? 60 : 35,
        alignment: Alignment.center,
        point: occurrence.position,
        child: SizedBox.expand(
          child: IconButton(
              onPressed: () {
                BlocProvider.of<WalkBloc>(context).add(SelectOccurrence(occurrenceID: index));
              },
              icon: MarkerOccurrence(
                imageUrl: (occurrence.images.isNotEmpty)
                    ? occurrence.images.first.url
                    : 'https://lightwidget.com/wp-content/uploads/local-file-not-found.png',
                id: index,
                isSelected: index == selectedOccurence && forceOccurenceUpdate,
              )),
        ),
      );

      if (index == selectedOccurence && forceOccurenceUpdate) {
        selectedMarker = marker;
      } else {
        markerList.add(marker);
      }
    }).toList();

    if (selectedMarker != null) markerList.add(selectedMarker!);
    return markerList;
  }
}

class CachedTileProvider extends TileProvider {
  CachedTileProvider();
  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) {
    return CachedNetworkImageProvider(
      getTileUrl(coordinates, options),
    );
  }
}
