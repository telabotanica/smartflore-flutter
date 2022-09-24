import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              child: ImageWithLoader(
                url: '${StringUtils.removeExtension(image)}X2L.jpg',
              )),
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
                  child: Text(AppLocalizations.of(context)!.see_taxon,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white)),
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
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Icon(SmartFloreIcons.plant,
                      size: 14, color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(width: 6),
                Flexible(
                    child: Text(title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.white))),
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
                      '${AppLocalizations.of(context)!.to} ${Numbers.convertToKilo(distance, AppLocalizations.of(context)!.distance_m, AppLocalizations.of(context)!.distance_km)}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
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
