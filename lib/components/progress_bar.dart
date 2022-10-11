import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double max;
  final double current;
  final Color color;
  final Color backgroundColor;
  final double height;

  const ProgressBar(
      {Key? key,
      required this.max,
      required this.current,
      this.color = Colors.red,
      this.backgroundColor = Colors.grey,
      this.height = 4})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: height,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
