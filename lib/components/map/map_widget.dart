import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/map/marker_condensed.dart';
import 'package:smartflore/components/map/marker_me.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> with TickerProviderStateMixin {
  LatLng currentLocation = LatLng(43.610769, 3.876716);
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  void recenter() {
    _animatedMapMove(currentLocation, _mapController.zoom);
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final _latTween = Tween<double>(begin: _mapController.center.latitude, end: destLocation.latitude);
    final _lngTween = Tween<double>(begin: _mapController.center.longitude, end: destLocation.longitude);
    final _zoomTween = Tween<double>(begin: _mapController.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    var controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    Animation<double> animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      _mapController.move(
          LatLng(_latTween.evaluate(animation), _lngTween.evaluate(animation)), _zoomTween.evaluate(animation));
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
                currentLocation = LatLng(state.position.latitude, state.position.longitude);
                _mapController.move(LatLng(currentLocation.latitude, currentLocation.longitude), _mapController.zoom);
              });
            }
          },
        ),
        BlocListener<MapBloc, MapState>(
          listener: (context, state) {
            if (state is OnRecenterMapState) {
              recenter();
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
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
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
                builder: (ctx) => const Image(image: AssetImage('assets/graphics/marker_me.png')),
              ),
              Marker(
                  anchorPos: AnchorPos.align(AnchorAlign.center),
                  width: 38.0,
                  height: 38.0,
                  point: currentLocation,
                  builder: (ctx) => const MarkerMe()),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                anchorPos: AnchorPos.align(AnchorAlign.top),
                width: 38.0,
                height: 38.0,
                point: currentLocation,
                builder: (ctx) => Icon(
                  SmartFloreIcons.marker,
                  size: 38,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
              Marker(
                  anchorPos: AnchorPos.align(AnchorAlign.center),
                  width: 18.0,
                  height: 18.0,
                  point: currentLocation,
                  builder: (ctx) => const MarkerCondensed()),
            ],
          ),
        ],
      ),
    );
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
