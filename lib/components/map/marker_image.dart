import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

class MarkerImage extends StatelessWidget {
  final String url;
  const MarkerImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        image: DecorationImage(
          image: NetworkImageWithRetry(
            url,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
