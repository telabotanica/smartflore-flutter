import 'package:flutter/material.dart';

class InteractiveItem extends StatelessWidget {
  final int id;
  final Widget child;
  final Function onPressed;
  final bool isSelected;
  const InteractiveItem(
      {super.key,
      required this.id,
      required this.child,
      required this.onPressed,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all((isSelected
                ? Colors.red.withValues(alpha: 0.09)
                : Colors.transparent)),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ))),
        onPressed: () {
          onPressed(context, id);
        },
        child: child);
  }
}
