import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  Widget? icon;
  CustomBackButton({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 2)),
      child: Center(
        child: icon != null ? icon : Icon(Icons.arrow_back),
      ),
    );
  }
}
