import 'package:flutter/material.dart';

class FadeTransitionAnimation extends PageRouteBuilder {
  final Widget widget;
  final Duration duration;

  FadeTransitionAnimation({
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
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
