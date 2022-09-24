import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/utils/convert.dart';

class GalleryWrapper extends StatefulWidget {
  final List<ImageAPI> images;
  final LoadingBuilder? loadingBuilder;
  final BoxDecoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final Axis scrollDirection;
  final void Function(int)? onCurrentIndexChanged;

  GalleryWrapper({
    Key? key,
    required this.images,
    required this.backgroundDecoration,
    required this.initialIndex,
    required this.scrollDirection,
    this.minScale,
    this.maxScale,
    this.loadingBuilder,
    this.onCurrentIndexChanged,
  })  : pageController = PageController(initialPage: initialIndex),
        super(key: key);

  @override
  State<GalleryWrapper> createState() => _GalleryWrapperState();
}

class _GalleryWrapperState extends State<GalleryWrapper> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
    if (widget.onCurrentIndexChanged != null)
      widget.onCurrentIndexChanged!(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: widget.backgroundDecoration,
            constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height),
            child: Stack(
              children: [
                PhotoViewGallery.builder(
                  itemCount: widget.images.length,
                  builder: _buildItem,
                  scrollPhysics: const BouncingScrollPhysics(),
                  loadingBuilder: widget.loadingBuilder,
                  backgroundDecoration: widget.backgroundDecoration,
                  pageController: widget.pageController,
                  onPageChanged: onPageChanged,
                  scrollDirection: widget.scrollDirection,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(widget.images[currentIndex].id.toString())),
                ),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                )
              ],
            )));
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    ImageAPI image = widget.images[index];

    return PhotoViewGalleryPageOptions(
        imageProvider:
            NetworkImage('${StringUtils.removeExtension(image.url)}X3L.jpg'),
        initialScale: PhotoViewComputedScale.contained,
        minScale: PhotoViewComputedScale.contained,
        heroAttributes: PhotoViewHeroAttributes(
          tag: image.id.toString(),
        ));
  }
}
