import 'package:contra/common/back-button.dart';
import 'package:contra/common/circular-box.dart';
import 'package:contra/common/transistion.dart';
import 'package:contra/screens/feed.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/navgation.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom-navigation.dart';

class DataModel {
  final String text;
  final Color color;

  DataModel({required this.text, required this.color});
}

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

  List<String> firstBox = ['Display and sound', 'Data usage', 'Accessibility'];
  final List<DataModel> secondBox = [
    DataModel(text: 'Account', color: Colors.yellow),
    DataModel(text: 'Password', color: Colors.lightBlue),
    DataModel(
      text: 'Privacy',
      color: Colors.pink,
    ),
    DataModel(text: "Preferences", color: Colors.yellow)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => BottomNavigation()),
                          (route) => false);
                    },
                    child: CustomBackButton(),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "General",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.3),
                      left: BorderSide(width: 1.3),
                      right: BorderSide(width: 1.3),
                      bottom: BorderSide(width: 1.3),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: firstBox
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircularBox(color: Colors.yellow),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                    ))
                              ]),
                        ),
                      )
                      .toList(),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Text(
              "Security and Privacy",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.3),
                      left: BorderSide(width: 1.3),
                      right: BorderSide(width: 1.3),
                      bottom: BorderSide(width: 1.3),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: secondBox
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircularBox(color: e.color),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        e.text,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                    ))
                              ]),
                        ),
                      )
                      .toList(),
                ),
              ),
            ])
          ]),
    ))));
  }
}
