import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trail/trail_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/panel/trail_list_item.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

enum TrailsListType { allTrails, myTrails }

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final TrailsListType trailsListType;

  const PanelWidget({Key? key, required this.controller, this.trailsListType = TrailsListType.allTrails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton.icon(
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(
            SmartFloreIcons.qrcode,
            size: 18,
            color: Theme.of(context).textTheme.bodyText1?.color,
          ),
          label: Text('Scanner un sentier', style: Theme.of(context).textTheme.bodyText1),
        ),
        const SizedBox(height: 16),
        BlocBuilder<TrailsBloc, TrailsDataState>(
          builder: (context, state) {
            if (state is TrailsDataInitialState) {
              return const CircularProgressIndicator();
            } else if (state is TrailsDataErrorState) {
              return const Text('Something is wrong ', style: TextStyle(color: Colors.red));
            } else if (state is TrailsDataLoadedState) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  controller: controller,
                  itemCount: state.trails.referentials.length,
                  itemBuilder: (context, index) {
                    final referential = state.trails.referentials[index];
                    return TextButton(
                      onPressed: () {
                        print('Pressed ${referential.key}');
                        BlocProvider.of<TrailBloc>(context).add(LoadTrailDataEvent(id: referential.key));
                      },
                      child: TrailListItemWidget(
                          title: referential.name,
                          length: referential.trail.length,
                          image: 'trail.image',
                          position: LatLngUtils.listToLatLng(referential.trail.centroid.coordinates)),
                    );
                  },
                ),
              );
            } else {
              return Container();
            }
          },
        )
      ],
    );
  }
}
