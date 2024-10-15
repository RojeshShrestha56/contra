import 'package:flutter/material.dart';

class CircularBox extends StatelessWidget {
  Color color;
  CircularBox({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: Colors.black, width: 1.3)),
    );
  }
}
