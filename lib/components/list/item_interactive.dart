import 'package:flutter/material.dart';

class InteractiveItem extends StatelessWidget {
  final int id;
  final Widget child;
  final Function onPressed;
  final bool isSelected;
  const InteractiveItem(
      {Key? key,
      required this.id,
      required this.child,
      required this.onPressed,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all((isSelected
                ? Colors.red.withOpacity(0.09)
                : Colors.transparent)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ))),
        onPressed: () {
          onPressed(context, id);
        },
        child: child);
  }
}
