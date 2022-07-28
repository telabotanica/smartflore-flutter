import 'package:flutter/material.dart';

class TagUI extends StatelessWidget {
  final String label;
  const TagUI({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            color: Color(0xFFFFE4E8)),
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(fontSize: 9, color: Color(0xFFA53128)),
        ));
  }
}
