import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

class ImageWithLoader extends StatelessWidget {
  final String url;
  const ImageWithLoader({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFade(
      image: NetworkImage(url),
      duration: const Duration(milliseconds: 300),
      syncDuration: const Duration(milliseconds: 0),
      alignment: Alignment.center,
      fit: BoxFit.cover,

      // shown behind everything:
      placeholder: Container(
        color: const Color(0x00ffffff),
        alignment: Alignment.center,
        child: const Icon(Icons.photo, color: Colors.white30, size: 128.0),
      ),

      loadingBuilder: (context, progress, chunkEvent) => Center(
          child: SizedBox(
              width: 60,
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white,
              ))),

      errorBuilder: (context, error) => Container(
        color: const Color(0xFF6F6D6A),
        alignment: Alignment.center,
        child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
      ),
    );
  }
}
