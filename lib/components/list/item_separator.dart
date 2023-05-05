import 'package:flutter/material.dart';

class ItemSeparator extends StatelessWidget {
  final Widget child;
  final bool isLast;
  const ItemSeparator({Key? key, required this.child, this.isLast = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !isLast
        ? Column(mainAxisSize: MainAxisSize.min, children: [
            child,
            const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8))
          ])
        : child;
  }
}
