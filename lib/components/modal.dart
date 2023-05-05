import 'dart:ui';

import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final Widget child;
  const Modal(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 0),
                  child: Card(
                      color: Colors.white,
                      elevation: 6,
                      shadowColor: const Color(0x60EAEAEA),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                          child: Wrap(children: [child]))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
