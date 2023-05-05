import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/navigation/taxon_screen_args.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smartflore/utils/convert.dart';

class TaxonCover extends StatelessWidget {
  final int taxonId;
  final String taxonRepo;
  final String image;
  final String? scientificName;
  final String? vernacularName;
  final LatLng position;

  const TaxonCover(
      {Key? key,
      required this.taxonId,
      required this.taxonRepo,
      required this.image,
      this.scientificName,
      this.vernacularName,
      required this.position})
      : super(key: key);

  void handleOnPress(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/taxon',
      arguments: TaxonScreenArguments(
        taxonId,
        taxonRepo,
        vernacularName,
        scientificName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              child: ImageWithLoader(
                url: image,
                imageFormat: 'X2L',
                syncDuration: 300,
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
                    handleOnPress(context);
                  },
                  child: Text(AppLocalizations.of(context).see_taxon,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
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
          child: GestureDetector(
            onTap: () {
              handleOnPress(context);
            },
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
                      child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                              text: (vernacularName != '')
                                  ? '$vernacularName — '
                                  : ''),
                          TextSpan(
                              text: scientificName,
                              style:
                                  const TextStyle(fontStyle: FontStyle.italic))
                        ]),
                  )),
                ]),
                const SizedBox(height: 6),
                BlocBuilder<GeolocationBloc, GeolocationState>(
                  builder: (context, state) {
                    return state.maybeWhen(locationUpdate: (position) {
                      double distance = Geolocator.distanceBetween(
                          position.latitude,
                          position.longitude,
                          position.latitude,
                          position.longitude);

                      return Text(
                        '${AppLocalizations.of(context).to} ${Numbers.convertToKilo(distance, AppLocalizations.of(context).distance_m, AppLocalizations.of(context).distance_km)}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                      );
                    }, orElse: () {
                      return Container();
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
