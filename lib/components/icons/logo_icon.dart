import 'package:flutter/material.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class LogoIcon extends StatelessWidget {
  final double iconSize;
  final double backgroundSize;
  final double boarderRadius;

  const LogoIcon(
      {Key? key,
      this.iconSize = 25,
      this.backgroundSize = 40,
      this.boarderRadius = 6})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: backgroundSize,
      height: backgroundSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(boarderRadius)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Center(
        child: Icon(
          SmartFloreIcons.logoIcon,
          size: iconSize,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
