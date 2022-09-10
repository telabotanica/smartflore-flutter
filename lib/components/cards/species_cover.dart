import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_fade/image_fade.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';

class SpeciesCover extends StatelessWidget {
  final int taxonId;
  final String taxonRepo;
  final String image;
  final String title;
  final LatLng position;

  const SpeciesCover(
      {Key? key,
      required this.taxonId,
      required this.taxonRepo,
      required this.image,
      required this.title,
      required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            child: ImageFade(
              image: NetworkImage(image),
              duration: const Duration(milliseconds: 300),
              syncDuration: const Duration(milliseconds: 150),
              alignment: Alignment.center,
              fit: BoxFit.cover,

              // shown behind everything:
              placeholder: Container(
                color: const Color(0x00ffffff),
                alignment: Alignment.center,
                child:
                    const Icon(Icons.photo, color: Colors.white30, size: 128.0),
              ),

              loadingBuilder: (context, progress, chunkEvent) => Center(
                  child: SizedBox(
                      width: 30,
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: Colors.white,
                      ))),

              errorBuilder: (context, error) => Container(
                color: const Color(0xFF6F6D6A),
                alignment: Alignment.center,
                child: const Icon(Icons.warning,
                    color: Colors.black26, size: 128.0),
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: SizedBox(
                height: 25,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.3),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/taxon',
                      arguments:
                          TaxonScreenArguments(taxonId, taxonRepo, title),
                    );
                  },
                  child: const Text('Voir la fiche',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            )),
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
