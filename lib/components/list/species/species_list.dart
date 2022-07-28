import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/list/species/species_interactive_item.dart';

class SpeciesList extends StatelessWidget {
  final ScrollController controller;
  final int selectedID;

  const SpeciesList(
      {Key? key, required this.controller, required this.selectedID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrailBloc, TrailState>(
      builder: (context, state) {
        if (state is TrailInitialState) {
          return const CircularProgressIndicator();
        } else if (state is TrailErrorState) {
          return const Text('Something is wrong ',
              style: TextStyle(color: Colors.red));
        } else if (state is TrailLoadedState) {
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            controller: controller,
            itemCount: state.trail.occurrencesCount,
            itemBuilder: (context, index) {
              if (state.trail.occurrences.isNotEmpty) {
                final species = state.trail.occurrences[index];
                return SpeciesInteractiveItem(
                    isSelected: (selectedID == index),
                    index: index,
                    id: 0,
                    title: species.taxon.species,
                    titleLatin: species.taxon.genus,
                    image: (species.images.isNotEmpty)
                        ? species.images[0].url
                        : 'https://lightwidget.com/wp-content/uploads/local-file-not-found.png',
                    tags: const []);
              } else {
                return Container();
              }
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}