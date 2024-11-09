import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final IconData? icon;
  final Color? iconColor;
  final bool outline;
  const RoundedButton({Key? key, required this.label, this.icon, this.iconColor, this.outline = false, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = (outline) ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary;
    Color secondary = (outline) ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.surface;

    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.disabled)) {
                return primary.withOpacity(0.5);
              }
              return primary;
            }),
            overlayColor: WidgetStateProperty.all<Color>(secondary.withOpacity(0.12)),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              side: BorderSide(color: secondary, width: outline ? 1 : 0, style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ))),
        child: Center(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            if (icon != null) ...[
              Icon(icon, color: iconColor ?? Theme.of(context).colorScheme.surface, size: 18),
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
