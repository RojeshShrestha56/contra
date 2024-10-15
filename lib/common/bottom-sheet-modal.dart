import 'package:flutter/material.dart';

void bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Stack(
            children: [
              Positioned(child: Icon(Icons.padding_rounded), bottom: 500,),
              Text("hi")
            ],
          ),
        );
      });
}
