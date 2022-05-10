import 'package:flutter/material.dart';

class MarkerMe extends StatelessWidget {
  const MarkerMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ),
        ),
        Center(
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
