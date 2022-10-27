import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/list/trail/trail_interactive_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/modal.dart';
import 'package:smartflore/components/modal/create_title.dart';

enum TrailsListType { allTrails, myTrails }

class TrailsList extends StatelessWidget {
  final ScrollController controller;
  final TrailsListType trailsListType;
  final Function onPanUpdate;
  final Box<dynamic> savedTrailsBox;
  const TrailsList(
      {Key? key,
      required this.controller,
      required this.onPanUpdate,
      this.trailsListType = TrailsListType.allTrails,
      required this.savedTrailsBox})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (trailsListType == TrailsListType.myTrails) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: OutlinedButton.icon(
              onPressed: () {
                BlocProvider.of<MapBloc>(context)
                    .add(const ChangeMapMode(mapMode: MapMode.create));
                showDialog(
                    context: context,
                    builder: (context) => Modal(CreateTitleModal(onClose: () {
                          BlocProvider.of<MapBloc>(context).add(
                              const ChangeMapMode(mapMode: MapMode.overview));
                          Navigator.of(context).pop();
                        })),
                    barrierColor: Colors.black.withOpacity(0.1));
              },
              icon: Icon(
                Icons.add_circle_outline,
                size: 18,
                color: Theme.of(context).textTheme.bodyText1?.color,
              ),
              label: Text(AppLocalizations.of(context)!.btn_create_trail,
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          SizedBox(
              width: 42,
              height: 42,
              child: SvgPicture.asset('assets/graphics/wait.svg')),
          const SizedBox(height: 12),
          Text(AppLocalizations.of(context)!.wip,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 150),
        ],
      );
    }

    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onPanUpdate: (details) => onPanUpdate(details),
              child: Container()
              /*Center(
              child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(
                  SmartFloreIcons.qrcode,
                  size: 18,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
                label: Text(AppLocalizations.of(context)!.btn_scan_trail, style: Theme.of(context).textTheme.bodyText1),
              ),
            ),*/
              ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<TrailsBloc, TrailsDataState>(
          builder: (context, state) {
            if (state is TrailsDataInitialState) {
              return const CircularProgressIndicator();
            } else if (state is TrailsDataErrorState) {
              return Text(AppLocalizations.of(context)!.error_API,
                  style: const TextStyle(color: Colors.red));
            } else if (state is TrailsDataLoadedState) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  controller: controller,
                  itemCount: state.trails.length,
                  itemBuilder: (context, index) {
                    final trail = state.trails[index];

                    return TrailInteractiveItemWidget(
                      index: index,
                      id: trail.id,
                      title: trail.name,
                      length: trail.pathLength,
                      image: trail.image!.url,
                      position: trail.position.start,
                      nbOccurence: trail.occurrencesCount,
                      isDownloaded:
                          (savedTrailsBox.get('trail_${trail.id}')) != null,
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
