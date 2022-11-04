import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final IconData? icon;
  final bool outline;
  const RoundedButton(
      {Key? key,
      required this.label,
      this.icon,
      this.outline = false,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = (outline)
        ? Theme.of(context).colorScheme.background
        : Theme.of(context).colorScheme.primary;
    Color secondary = (outline)
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.background;

    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return primary;
              }
              return primary;
            }),
            overlayColor:
                MaterialStateProperty.all<Color>(secondary.withOpacity(0.12)),
            padding:
                MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              side: BorderSide(
                  color: secondary,
                  width: outline ? 1 : 0,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ))),
        child: Center(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            if (icon != null) ...[
              Icon(icon,
                  color: Theme.of(context).colorScheme.background, size: 18),
              const SizedBox(width: 8)
            ],
            Text(label,
                style: TextStyle(
                  fontSize: 16,
                  color: secondary,
                ))
          ]),
        ));
  }
}
