import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/list/trail_interactive_item.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

enum TrailsListType { allTrails, myTrails }

class TrailListPanelWidget extends StatelessWidget {
  final ScrollController controller;
  final TrailsListType trailsListType;
  final Function onPanUpdate;

  const TrailListPanelWidget(
      {Key? key,
      required this.controller,
      required this.onPanUpdate,
      this.trailsListType = TrailsListType.allTrails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onPanUpdate: (details) => onPanUpdate(details),
            child: Center(
              child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(
                  SmartFloreIcons.qrcode,
                  size: 18,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
                label: Text('Scanner un sentier',
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<TrailsBloc, TrailsDataState>(
          builder: (context, state) {
            if (state is TrailsDataInitialState) {
              return const CircularProgressIndicator();
            } else if (state is TrailsDataErrorState) {
              return const Text('Something is wrong ',
                  style: TextStyle(color: Colors.red));
            } else if (state is TrailsDataLoadedState) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  controller: controller,
                  itemCount: state.trails.referentials.length,
                  itemBuilder: (context, index) {
                    final referential = state.trails.referentials[index];
                    return TrailInteractiveItemWidget(
                        index: index,
                        id: referential.key,
                        title: referential.name,
                        length: referential.trail.length,
                        image:
                            'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                        position: LatLngUtils.listToLatLng(
                            referential.trail.centroid.coordinates));
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
