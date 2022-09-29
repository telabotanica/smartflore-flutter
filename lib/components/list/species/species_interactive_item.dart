import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/walk/walk_bloc.dart';
import 'package:smartflore/components/list/item_interactive.dart';
import 'package:smartflore/components/list/item_separator.dart';
import 'package:smartflore/components/list/species/species_item.dart';

class SpeciesInteractiveItem extends StatelessWidget {
  final bool isInteractive;
  final int index;
  final int id;
  final String? titleLatin;
  final String? title;
  final String image;
  final List<String> tags;
  final bool isSelected;

  const SpeciesInteractiveItem(
      {Key? key,
      this.isInteractive = true,
      required this.index,
      required this.id,
      this.titleLatin,
      this.title,
      required this.image,
      required this.tags,
      required this.isSelected})
      : super(key: key);

  onPressed(BuildContext context, int id) {
    BlocProvider.of<WalkBloc>(context)
        .add(SelectOccurrence(occurrenceID: index));
  }

  @override
  Widget build(BuildContext context) {
    return ItemSeparator(
        child: InteractiveItem(
      isSelected: isSelected,
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
