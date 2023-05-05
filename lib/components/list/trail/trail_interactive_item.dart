import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/list/item_interactive.dart';
import 'package:smartflore/components/list/item_separator.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';

class TrailInteractiveItemWidget extends StatelessWidget {
  final bool isInteractive;
  final int id;
  final int index;
  final String title;
  final String? image;
  final int length;
  final LatLng position;
  final int nbOccurence;
  final bool isDownloaded;
  final bool isLast;

  const TrailInteractiveItemWidget(
      {Key? key,
      this.isInteractive = true,
      required this.index,
      required this.id,
      required this.title,
      required this.length,
      this.image,
      required this.position,
      required this.nbOccurence,
      this.isDownloaded = false,
      this.isLast = false})
      : super(key: key);

  onPressed(BuildContext context, int id) {
    BlocProvider.of<MapBloc>(context).add(MapEvent.requestTrailPreview(id));
  }

  @override
  Widget build(BuildContext context) {
    return ItemSeparator(
        isLast: isLast,
        child: addInteractivity(
          isInteractive,
          TrailItem(
            trailId: id,
            index: index,
            title: title,
            length: length,
            position: position,
            image: image,
            isInteractive: isInteractive,
            nbOccurence: nbOccurence,
            isDownloaded: isDownloaded,
          ),
        ));
  }

  Widget addInteractivity(bool isInteractive, Widget child) {
    return isInteractive
        ? InteractiveItem(
            isSelected: false, id: id, onPressed: onPressed, child: child)
        : child;
  }
}
