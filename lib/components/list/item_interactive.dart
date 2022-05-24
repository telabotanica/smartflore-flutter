import 'package:flutter/material.dart';

class InteractiveItem extends StatelessWidget {
  final String id;
  final Widget child;
  final Function onPressed;
  const InteractiveItem(
      {Key? key,
      required this.id,
      required this.child,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
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
