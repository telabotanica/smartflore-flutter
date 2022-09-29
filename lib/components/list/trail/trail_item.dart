import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrailItem extends StatelessWidget {
  final bool isInteractive;
  final int index;
  final String title;
  final String image;
  final int length;
  final LatLng position;
  final int nbOccurence;

  const TrailItem({
    Key? key,
    this.isInteractive = true,
    required this.index,
    required this.title,
    required this.length,
    required this.image,
    required this.position,
    required this.nbOccurence,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String distance = Numbers.convertToKilo(
        length.toDouble(),
        AppLocalizations.of(context)!.distance_m,
        AppLocalizations.of(context)!.distance_km);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, (index == 0) ? 0 : 20, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 68,
            height: 68,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                child: ImageWithLoader(
                    url: '${StringUtils.removeExtension(image)}XS.jpg')),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Text(title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyText1)),
                    const SizedBox(width: 8),
                    (isInteractive)
                        ? Icon(
                            SmartFloreIcons.arrowRight,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : Container(),
                  ],
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(
                                  SmartFloreIcons.path,
                                  size: 12,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 5),
                                Text(distance,
                                    style: Theme.of(context).textTheme.caption),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildNbOccurence(context),
                                buildDistanceIndicator(context)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNbOccurence(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            SmartFloreIcons.plant,
            size: 12,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              AppLocalizations.of(context)!.count_observation(nbOccurence),
              style: Theme.of(context).textTheme.caption,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDistanceIndicator(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            SmartFloreIcons.marker,
            size: 15,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: BlocBuilder<GeolocationBloc, GeolocationState>(
              builder: (context, state) {
                if (state is LocationUpdatedState) {
                  double distance = Geolocator.distanceBetween(
                      position.latitude,
                      position.longitude,
                      state.position.latitude,
                      state.position.longitude);

                  return AutoSizeText(
                    '${AppLocalizations.of(context)!.to} ${Numbers.convertToKilo(distance, AppLocalizations.of(context)!.distance_m, AppLocalizations.of(context)!.distance_km)}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                    maxLines: 1,
                  );
                } else {
                  return Container();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
