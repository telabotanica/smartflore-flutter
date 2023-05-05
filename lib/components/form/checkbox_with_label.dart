import 'package:flutter/material.dart';

class CheckBoxWithTitle extends StatelessWidget {
  final bool value;
  final Function(bool?)? onChanged;
  final Widget? title;
  final bool enabled;
  final Color? activeColor;
  final Color? checkColor;
  final bool autofocus;
  final bool tristate;
  final OutlinedBorder? checkboxShape;
  final BorderSide? checkboxSide;
  final double height;

  const CheckBoxWithTitle(
      {Key? key,
      required this.value,
      required this.onChanged,
      this.height = 40,
      this.title,
      this.enabled = true,
      this.activeColor,
      this.checkColor,
      this.autofocus = false,
      this.tristate = false,
      this.checkboxShape,
      this.checkboxSide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          onChanged!(!value);
        },
        child: Row(children: [
          Checkbox(
            value: value,
            onChanged: enabled ? onChanged : null,
            activeColor: activeColor,
            checkColor: checkColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            autofocus: autofocus,
            tristate: tristate,
            shape: checkboxShape,
            side: checkboxSide,
          ),
          title ?? Container()
        ]),
      ),
    );
  }
}
