import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

import '../../bloc/geolocation/geolocation_bloc.dart';

class TrailListItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final int length;
  final LatLng position;

  const TrailListItemWidget(
      {Key? key,
      required this.title,
      required this.length,
      required this.image,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String distance = Numbers.mToKM(length.toDouble());

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                image: NetworkImageWithRetry(
                  'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                ),
                fit: BoxFit.cover,
              ),
            ),
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
                    Icon(
                      SmartFloreIcons.arrowRight,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                            children: [
                              Icon(
                                SmartFloreIcons.plant,
                                size: 12,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 5),
                              Text('8 espèces',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            SmartFloreIcons.marker,
                            size: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 4),
                          BlocBuilder<GeolocationBloc, GeolocationState>(
                            builder: (context, state) {
                              if (state is LocationUpdatedState) {
                                double distance = Geolocator.distanceBetween(
                                    position.latitude,
                                    position.longitude,
                                    state.position.latitude,
                                    state.position.longitude);

                                return Text(
                                  'À ${Numbers.mToKM(distance)}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                );
                              } else {
                                return Container();
                              }
                            },
                          )
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ],
      ),
      const Divider(height: 40, thickness: 1, color: Color(0xFFD8DCD8))
    ]);
  }
}
