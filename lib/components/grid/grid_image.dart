import 'package:flutter/material.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/utils/convert.dart';

class GridImage extends StatelessWidget {
  final String image;

  const GridImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageWithLoader(url: '${StringUtils.removeExtension(image)}XS.jpg');
  }
}
