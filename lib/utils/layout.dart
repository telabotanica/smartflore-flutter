import 'package:flutter/material.dart';

class LayoutUtils {
  static Size? getSizes(GlobalKey key) {
    if (key.currentContext != null) {
      final RenderBox renderBoxRed =
          key.currentContext!.findRenderObject() as RenderBox;
      final sizeRed = renderBoxRed.size;
      return Size(sizeRed.width, sizeRed.height);
    } else {
      return null;
    }
  }

  static Position getPositions(GlobalKey key) {
    final RenderBox renderBoxRed =
        key.currentContext!.findRenderObject() as RenderBox;
    final positionRed = renderBoxRed.localToGlobal(Offset.zero);
    return Position(positionRed.dx, positionRed.dy);
  }
}

class Size {
  final double width;
  final double height;
  Size(this.width, this.height);
}

class Position {
  final double x;
  final double y;
  Position(this.x, this.y);
}
