import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/list/trail/my_trails.dart';
import 'package:smartflore/components/list/trail/trail_interactive_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum TrailsListType { allTrails, myTrails }

class TrailsList extends StatelessWidget {
  final ScrollController controller;
  final TrailsListType trailsListType;
  final Function onPanUpdate;
  final Box<dynamic> savedTrailsBox;
  final bool isAuth;
  const TrailsList(
      {Key? key,
      required this.controller,
      required this.onPanUpdate,
      this.trailsListType = TrailsListType.allTrails,
      required this.savedTrailsBox,
      required this.isAuth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('>>>>>>> buiiild');
    if (trailsListType == TrailsListType.myTrails) {
      return MyTrails(
          isAuth: isAuth, controller: controller, onPanUpdate: onPanUpdate);
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
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                label: Text(AppLocalizations.of(context).btn_scan_trail, style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),*/
              ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<TrailsBloc, TrailsState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const CircularProgressIndicator();
              },
              dataLoading: () {
                return const CircularProgressIndicator();
              },
              dataLoaded: (trailsData) {
                return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    controller: controller,
                    itemCount: trailsData.length,
                    itemBuilder: (context, index) {
                      final trail = trailsData[index];
                      LatLng startPos = (trail.position != null &&
                              trail.position?.start != null)
                          ? trail.position!.start
                          : LatLng(0, 0);
                      return TrailInteractiveItemWidget(
                        index: index,
                        id: trail.id,
                        title: trail.name,
                        length: trail.pathLength,
                        image: trail.image!.url,
                        position: startPos,
                        nbOccurence: trail.occurrencesCount,
                        isDownloaded:
                            (savedTrailsBox.get('trail_${trail.id}')) != null,
                      );
                    },
                  ),
                );
              },
              dataLoadError: () {
                return Text(AppLocalizations.of(context).error_API,
                    style: const TextStyle(color: Colors.red));
              },
            );
          },
        )
      ],
    );
  }
}
