import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/components/modal/download.dart';
import 'package:smartflore/components/icons/download_icon.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/components/modal.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:smartflore/utils/convert.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrailItem extends StatefulWidget {
  final bool isInteractive;
  final int trailId;
  final int? index;
  final String title;
  final String? image;
  final int length;
  final LatLng? position;
  final int nbOccurence;
  final bool showIconMore;
  final bool isDownloaded;

  const TrailItem(
      {Key? key,
      this.isInteractive = true,
      required this.trailId,
      this.index = 1,
      required this.title,
      required this.length,
      this.image,
      this.position,
      required this.nbOccurence,
      this.showIconMore = false,
      this.isDownloaded = false})
      : super(key: key);

  @override
  State<TrailItem> createState() => _TrailItemState();
}

class _TrailItemState extends State<TrailItem> {
  @override
  Widget build(BuildContext context) {
    String distance = Numbers.convertToKilo(
        widget.length.toDouble(),
        AppLocalizations.of(context)!.distance_m,
        AppLocalizations.of(context)!.distance_km);
    return Padding(
      padding: EdgeInsets.fromLTRB(0, (widget.index == 0) ? 0 : 20, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              SizedBox(
                  width: 68,
                  height: 68,
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(6.0)),
                      child: widget.image == null ||
                              widget.image == '_path_placeholder'
                          ? Image.asset('assets/images/path_placeholder.jpg')
                          : ImageWithLoader(
                              url: widget.image!, imageFormat: 'XS'))),
              (widget.isDownloaded)
                  ? Transform.translate(
                      offset: const Offset(58, -6), child: const DownloadIcon())
                  : Container(),
            ],
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
                        child: Text(widget.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyText1)),
                    const SizedBox(width: 8),
                    (widget.isInteractive)
                        ? Icon(
                            SmartFloreIcons.arrowRight,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : (widget.showIconMore)
                            ? GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => Modal(DownloadCard(
                                          trailId: widget.trailId,
                                          title: widget.title,
                                          length: widget.length,
                                          image: widget.image,
                                          nbOccurence: widget.nbOccurence)),
                                      barrierColor:
                                          Colors.black.withOpacity(0.1));
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 20),
                                    child: Icon(SmartFloreIcons.dot_3,
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                ))
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
                                (widget.position != null)
                                    ? buildDistanceIndicator(context)
                                    : Container()
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
              AppLocalizations.of(context)!
                  .count_observation(widget.nbOccurence),
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
                return state.maybeWhen(locationUpdate: (position) {
                  double distance = Geolocator.distanceBetween(
                      widget.position!.latitude,
                      widget.position!.longitude,
                      position.latitude,
                      position.longitude);

                  return AutoSizeText(
                    '${AppLocalizations.of(context)!.to} ${Numbers.convertToKilo(distance, AppLocalizations.of(context)!.distance_m, AppLocalizations.of(context)!.distance_km)}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                    maxLines: 1,
                  );
                }, orElse: () {
                  return Container();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
