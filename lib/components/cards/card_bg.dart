import 'package:flutter/material.dart';

class CardBackground extends StatelessWidget {
  final double? height;
  final Widget? child;

  const CardBackground({super.key, this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.black.withValues(alpha: 0.15))
            ],
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: child);
  }
}
