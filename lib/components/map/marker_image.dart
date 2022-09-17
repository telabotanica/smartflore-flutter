import 'package:flutter/material.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/utils/convert.dart';

class MarkerImage extends StatelessWidget {
  final String url;
  const MarkerImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      height: 82,
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          child: ImageWithLoader(
              url: '${StringUtils.removeExtension(url)}CRX2S.jpg')),
    );
  }
}
