import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/list/species/species_interactive_item.dart';

class SpeciesList extends StatelessWidget {
  final ScrollController controller;

  const SpeciesList({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrailsBloc, TrailsDataState>(
      builder: (context, state) {
        if (state is TrailsDataInitialState) {
          return const CircularProgressIndicator();
        } else if (state is TrailsDataErrorState) {
          return const Text('Something is wrong ',
              style: TextStyle(color: Colors.red));
        } else if (state is TrailsDataLoadedState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            controller: controller,
            itemCount: state.trails.referentials.length,
            itemBuilder: (context, index) {
              final referential = state.trails.referentials[index];
              return SpeciesInteractiveItem(
                  index: index,
                  id: referential.key,
                  title: referential.name,
                  titleLatin: 'todo',
                  image:
                      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                  tags: const []);
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
