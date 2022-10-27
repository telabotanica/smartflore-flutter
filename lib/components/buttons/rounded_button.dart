import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  const RoundedButton({Key? key, required this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              }
              return Theme.of(context).colorScheme.primary;
            }),
            overlayColor: MaterialStateProperty.all<Color>(
                Colors.white.withOpacity(0.12)),
            padding:
                MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ))),
        child: Center(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            if (icon != null) ...[
              Icon(icon,
                  color: Theme.of(context).colorScheme.background, size: 18),
              const SizedBox(width: 8)
            ],
            Text(
              label,
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.background),
            )
          ]),
        ));
  }
}
