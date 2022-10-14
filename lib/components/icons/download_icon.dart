import 'package:flutter/material.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class DownloadIcon extends StatelessWidget {
  const DownloadIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 19,
        height: 19,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Theme.of(context).colorScheme.primary),
        child: const Icon(
          SmartFloreIcons.download,
          color: Colors.white,
          size: 10,
        ));
  }
}
