import 'package:flutter/material.dart';
import 'package:smartflore/components/image/image_with_loader.dart';

class GridImage extends StatelessWidget {
  final String image;

  const GridImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ImageWithLoader(url: image, imageFormat: 'XS');
  }
}
