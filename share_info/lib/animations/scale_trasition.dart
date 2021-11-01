import 'package:flutter/material.dart';

class ScaleTransitionAnimation extends PageRouteBuilder {
  final Widget widget;
  final Duration duration;

  ScaleTransitionAnimation({
    required this.widget,
    this.duration = const Duration(milliseconds: 1000),
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              widget,
          transitionDuration: duration,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
        );
}
