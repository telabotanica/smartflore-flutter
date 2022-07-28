import 'package:flutter/material.dart';

class CardBackground extends StatelessWidget {
  final double? height;
  final Widget? child;

  const CardBackground({Key? key, this.height, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.15))
            ],
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: child);
  }
}
