import 'package:flutter/material.dart';
import 'package:smartflore/components/grid/grid_image.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';

class Gallery extends StatefulWidget {
  final List<ImageAPI> images;
  const Gallery({Key? key, required this.images}) : super(key: key);

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
        itemCount: widget.images.length,
        itemBuilder: (BuildContext context, int index) {
          return GridImage(image: widget.images[index].url);
        });
  }
}
