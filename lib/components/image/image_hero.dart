import 'package:flutter/material.dart';

class ImageHero extends StatelessWidget {
  final String id;
  final String url;
  final GestureTapCallback onTap;

  const ImageHero(
      {Key? key, required this.id, required this.url, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: id,
          child: Image(
            image: NetworkImage(url),
          ),
        ));
  }
}
