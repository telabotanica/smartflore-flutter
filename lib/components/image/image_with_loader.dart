import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

class ImageWithLoader extends StatelessWidget {
  final String url;
  final String? id;
  final GestureTapCallback? onTap;
  final EdgeInsets progressIndicatorPadding;

  const ImageWithLoader(
      {Key? key,
      required this.url,
      this.id,
      this.onTap,
      this.progressIndicatorPadding = const EdgeInsets.all(0)})
      : super(key: key);

  Widget buildImage(BuildContext context) {
    return ImageFade(
      image: NetworkImage(url),
      duration: const Duration(milliseconds: 300),
      syncDuration: const Duration(milliseconds: 0),
      alignment: Alignment.center,
      fit: BoxFit.cover,
      // shown behind everything:
      placeholder: Container(
        color: Theme.of(context).colorScheme.secondary,
        alignment: Alignment.center,
        child:
            Icon(Icons.photo, color: Colors.white.withOpacity(0.8), size: 17.0),
      ),

      loadingBuilder: (context, progress, chunkEvent) => Center(
          child: Container(
        color: Theme.of(context).colorScheme.secondary,
        alignment: Alignment.center,
        child: Padding(
          padding: progressIndicatorPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.photo,
                  color: Colors.white.withOpacity(0.8), size: 17.0),
              const SizedBox(height: 5),
              SizedBox(
                  width: 60,
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.white,
                  )),
            ],
          ),
        ),
      )),

      errorBuilder: (context, error) => Container(
        color: const Color(0xFF6F6D6A),
        alignment: Alignment.center,
        child: const Icon(Icons.warning, color: Colors.black26, size: 17.0),
      ),
    );
  }

  Widget withHero(Widget child) {
    return Hero(tag: id!, child: child);
  }

  Widget withOnTap(Widget child) {
    return GestureDetector(
        onTap: () {
          onTap!();
        },
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    Widget image = buildImage(context);
    if (id != null) image = withHero(image);
    if (onTap != null) image = withOnTap(image);
    return image;
  }
}
