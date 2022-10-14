import 'package:flutter/material.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/navigation/gallery_screen_args.dart';

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
          return ImageWithLoader(
            url: widget.images[index].url,
            imageFormat: 'S',
            id: widget.images[index].id.toString(),
            onTap: () {
              _openGallery(context, index);
            },
          );
        });
  }

  _openGallery(BuildContext context, final int index) {
    Navigator.of(context).pushNamed('/gallery-fullScreen',
        arguments: GalleryScreenArguments(widget.images,
            const BoxDecoration(color: Colors.black), index, Axis.horizontal));
  }
}
