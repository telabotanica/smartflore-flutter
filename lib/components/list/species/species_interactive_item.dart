import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/list/item_interactive.dart';
import 'package:smartflore/components/list/item_separator.dart';
import 'package:smartflore/components/list/species/species_item.dart';

class SpeciesInteractiveItem extends StatelessWidget {
  final bool isInteractive;
  final int index;
  final String id;
  final String titleLatin;
  final String title;
  final String image;
  final List<String> tags;

  const SpeciesInteractiveItem(
      {Key? key,
      this.isInteractive = true,
      required this.index,
      required this.id,
      required this.titleLatin,
      required this.title,
      required this.image,
      required this.tags})
      : super(key: key);

  onPressed(BuildContext context, String id) {
    BlocProvider.of<MapBloc>(context).add(RequestTrailPreview(trailID: id));
  }

  @override
  Widget build(BuildContext context) {
    return ItemSeparator(
        child: InteractiveItem(
      id: id,
      onPressed: onPressed,
      child: SpeciesItem(
        index: index,
        title: title,
        titleLatin: titleLatin,
        image: image,
        tags: tags,
      ),
    ));
  }
}
