import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/components/cards/card_bg.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrailPreview extends StatelessWidget {
  final bool isLoading;
  final int index;
  final int id;
  final String title;
  final String image;
  final int length;
  final int nbOccurence;
  final LatLng position;
  final Function? onPressCB;

  const TrailPreview({
    Key? key,
    required this.index,
    required this.id,
    required this.title,
    required this.length,
    required this.image,
    required this.position,
    required this.nbOccurence,
    this.onPressCB,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardBackground(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Stack(
              children: [
                isLoading
                    ? const SizedBox(
                        height: 100,
                        child: Center(
                            child: SizedBox(
                                height: 30,
                                width: 30,
                                child: CircularProgressIndicator())))
                    : Container(),
                Opacity(
                    opacity: isLoading ? 0 : 1,
                    child: TrailItem(
                      isInteractive: false,
                      index: index,
                      title: title,
                      length: length,
                      position: position,
                      image: image,
                      nbOccurence: nbOccurence,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 46,
            child: TextButton(
                onPressed: isLoading ? null : () => onPressCB!(),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5);
                      }
                      return Theme.of(context).colorScheme.primary;
                    }),
                    overlayColor: MaterialStateProperty.all<Color>(
                        Colors.white.withOpacity(0.12)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6)),
                    ))),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.btn_start,
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.background),
                  ),
                )),
          )
        ],
      )),
    );
  }
}
