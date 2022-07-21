import 'package:flutter/material.dart';
import 'package:smartflore/components/grid/grid_image.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          crossAxisCount: 3,
        ),
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return const GridImage(
              image:
                  'https://jardinage.lemonde.fr/images/dossiers/historique/coquelicot-fleur-184011.jpg');
        });
  }
}
