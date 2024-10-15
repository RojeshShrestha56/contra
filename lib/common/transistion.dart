import 'package:flutter/material.dart';

class SlideTransistionRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  SlideTransistionRoute({required this.child, required this.direction})
      : super(
          transitionDuration: Duration(milliseconds: 400),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions
    // return ScaleTransition(scale: animation, child: child);
    return SlideTransition(
      position: Tween<Offset>(begin: _getBeginOffset(), end: Offset(0, 0))
          .animate(animation),
      child: child,
    );
  }

  Offset _getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);

      case AxisDirection.right:
        return Offset(1, 0);
      case AxisDirection.left:
        return Offset(-1, 0);
    }
  }
}
