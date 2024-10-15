import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({ Key? key }) : super(key: key);

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool isSwitched = false; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Switch(
      value: isSwitched,
      onChanged: (value){
      setState(() {
      isSwitched=value;
      print(isSwitched);
      });
      },
      activeTrackColor: Colors.yellow,
      activeColor: Colors.green,
      ),
    );
  }
}