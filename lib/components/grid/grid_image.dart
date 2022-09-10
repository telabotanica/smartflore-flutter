import 'package:flutter/material.dart';
import 'package:smartflore/components/gallery/image_with_loader.dart';

class GridImage extends StatelessWidget {
  final String image;

  const GridImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageWithLoader(url: image);
  }
}
