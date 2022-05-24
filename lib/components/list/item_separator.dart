import 'package:flutter/material.dart';

class ItemSeparator extends StatelessWidget {
  final Widget child;
  const ItemSeparator({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      child,
      const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8))
    ]);
  }
}
