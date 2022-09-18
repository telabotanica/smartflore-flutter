import 'package:flutter/material.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class MarkerWithBG extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final Color bgColor;

  const MarkerWithBG(
      {Key? key,
      required this.icon,
      required this.size,
      required this.color,
      this.bgColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(
        SmartFloreIcons.markerFill,
        size: size,
        color: bgColor,
      ),
      Icon(
        icon,
        size: size,
        color: color,
      ),
    ]);
  }
}
