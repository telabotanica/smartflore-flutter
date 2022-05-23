import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/components/list/trail_item.dart';

class TrailPreview extends StatelessWidget {
  final bool isLoading;
  final int index;
  final String id;
  final String title;
  final String image;
  final int length;
  final LatLng position;

  const TrailPreview({
    Key? key,
    required this.index,
    required this.id,
    required this.title,
    required this.length,
    required this.image,
    required this.position,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              color: Theme.of(context).colorScheme.background,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 12,
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Stack(
                  children: [
                    isLoading
                        ? const SizedBox(
                            height: 110,
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
                            image: image)),
                  ],
                ),
              ),
              SizedBox(
                height: 46,
                child: TextButton(
                    onPressed: isLoading ? null : () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6)),
                        ))),
                    child: Center(
                      child: Text(
                        'Démarrer',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.background),
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
