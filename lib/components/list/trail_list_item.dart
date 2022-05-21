import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/list/item_interactive.dart';
import 'package:smartflore/components/list/item_separator.dart';
import 'package:smartflore/components/list/trail_item.dart';

class TrailListItemWidget extends StatelessWidget {
  final bool isInteractive;
  final String id;
  final int index;
  final String title;
  final String image;
  final int length;
  final LatLng position;

  const TrailListItemWidget(
      {Key? key,
      this.isInteractive = true,
      required this.index,
      required this.id,
      required this.title,
      required this.length,
      required this.image,
      required this.position})
      : super(key: key);

  onPressed(BuildContext context, String id) {
    BlocProvider.of<TrailBloc>(context).add(LoadTrailDataEvent(id: id));
  }

  @override
  Widget build(BuildContext context) {
    return ItemSeparator(
        child: InteractiveItem(
      id: id,
      onPressed: onPressed,
      child: TrailItem(
        index: index,
        title: title,
        length: length,
        position: position,
        image: image,
      ),
    ));
  }
}
