import 'package:flutter/material.dart';

enum TransitionType {
  defaultTransition,
  none,
  slideUp,
  slideDown,
  slideLeft,
  slideRight,
  fade,
  slidePushUp,
  slidePushDown,
  slidePushLeft,
  slidePushRight
}

class Transitions<T> extends PageRouteBuilder<T> {
  final TransitionType transitionType;
  final Curve curve;
  final Curve reverseCurve;
  final Duration duration;
  final Widget? oldScreen;
  final Widget newScreen;

  Transitions(
      {required this.transitionType,
      this.curve = Curves.easeInCubic,
      this.reverseCurve = Curves.easeOutCubic,
      this.duration = const Duration(milliseconds: 300),
      required this.newScreen,
      this.oldScreen})
      : super(
          transitionDuration: duration,
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return newScreen;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            switch (transitionType) {
              case TransitionType.none:
                return newScreen;
              case TransitionType.fade:
                return FadeTransition(
                  opacity: animation,
                  child: newScreen,
                );
              case TransitionType.slideDown:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: newScreen,
                );
              case TransitionType.slideUp:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: newScreen,
                );
              case TransitionType.slideLeft:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: newScreen,
                );
              case TransitionType.slideRight:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: newScreen,
                );
              case TransitionType.defaultTransition:
                return FadeTransition(
                  opacity: animation,
                  child: newScreen,
                );
              case TransitionType.slidePushLeft:
                return Stack(
                  children: <Widget>[
                    SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, 0.0),
                        end: const Offset(-1.0, 0.0),
                      ).animate(animation),
                      child: oldScreen,
                    ),
                    SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: newScreen,
                    )
                  ],
                );

              default:
                return Container();
            }
          },
        );
}
