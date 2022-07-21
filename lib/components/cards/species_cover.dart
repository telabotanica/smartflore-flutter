import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

class SpeciesCover extends StatelessWidget {
  final String image;
  final String title;
  final LatLng position;

  const SpeciesCover(
      {Key? key,
      required this.image,
      required this.title,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            image: DecorationImage(
              image: NetworkImageWithRetry(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 125,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(6)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0),
                    ],
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Icon(SmartFloreIcons.plant,
                    size: 14, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 4),
                Text(title,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ]),
              const SizedBox(height: 6),
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
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
