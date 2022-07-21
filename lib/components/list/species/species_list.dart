import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/components/list/species/species_interactive_item.dart';

class SpeciesList extends StatelessWidget {
  final ScrollController controller;

  const SpeciesList({Key? key, required this.controller}) : super(key: key);

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
                if (species.images.isNotEmpty) {
                  return SpeciesInteractiveItem(
                      index: index,
                      id: 0,
                      title: species.taxon.genus,
                      titleLatin: species.taxon.genus,
                      image: species.images[0].url,
                      tags: const []);
                } else {
                  return Container();
                }
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
