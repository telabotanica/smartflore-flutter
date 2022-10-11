import 'dart:ui';

import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final Widget child;
  const Modal(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Card(
                  color: Colors.white,
                  elevation: 6,
                  shadowColor: const Color(0x60EAEAEA),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: Wrap(children: [child]))),
            ),
          )
        ],
      ),
    );
  }
}
