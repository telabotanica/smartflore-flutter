import 'package:flutter/material.dart';

class LayoutUtils {
  static Size getSizes(GlobalKey key) {
    if (key.currentContext != null) {
      final RenderBox renderBox =
          key.currentContext!.findRenderObject() as RenderBox;
      final sizeRed = renderBox.size;
      return Size(sizeRed.width, sizeRed.height);
    } else {
      return Size(0, 0);
    }
  }

  static Position getPositions(GlobalKey key) {
    final RenderBox renderBox =
        key.currentContext!.findRenderObject() as RenderBox;
    final positionRed = renderBox.localToGlobal(Offset.zero);
    print('pos ${positionRed.dy}');
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
