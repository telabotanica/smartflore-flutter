import 'package:flutter/material.dart';

class MarkerCondensed extends StatelessWidget {
  const MarkerCondensed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          color: Theme.of(context).colorScheme.surface),
    );
  }
}
