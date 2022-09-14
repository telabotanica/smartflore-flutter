import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';

class GalleryScreenArguments {
  final List<ImageAPI> images;
  late LoadingBuilder? loadingBuilder;
  final BoxDecoration backgroundDecoration;
  late dynamic minScale;
  late dynamic maxScale;
  final int initialIndex;
  final Axis scrollDirection;

  GalleryScreenArguments(
    this.images,
    this.backgroundDecoration,
    this.initialIndex,
    this.scrollDirection, {
    this.minScale,
    this.maxScale,
    this.loadingBuilder,
  });
}
