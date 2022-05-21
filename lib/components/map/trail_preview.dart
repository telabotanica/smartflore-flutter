import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/components/list/trail_item.dart';

class TrailPreview extends StatelessWidget {
  final int index;
  final String title;
  final String image;
  final int length;
  final LatLng position;

  const TrailPreview({
    Key? key,
    required this.index,
    required this.title,
    required this.length,
    required this.image,
    required this.position,
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
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: TrailItem(
                    isInteractive: false,
                    index: index,
                    title: title,
                    length: length,
                    position: position,
                    image: image),
              ),
              SizedBox(
                height: 46,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                      ),
                      padding: EdgeInsets.zero,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      primary: Colors.white,
                    ),
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
