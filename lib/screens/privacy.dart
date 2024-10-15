
import 'dart:math';

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
 
 

import '../common/custom-toggle-button.dart';
import 'bottom-navigation.dart';


class Privacy extends StatefulWidget {
  const Privacy({ Key? key }) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
    
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
                        "Privacy",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                          "Activity Status",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.left,
                                        ),
                                      CustomToggle()
                                
                                ]
                                      ),
                                    
                                  ),
                                 Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                              "Private Account",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          
                                      Container(
                                        width: 250,
                                        child: Text(
                                                "Only people you can approve  can see photos and videos",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                              ),
                                      ),
                                    ],
                                  ),
                                    CustomToggle(),
                                ]
                                
                                      ),
                                    
                                  ),
                                Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                          "Location",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                    CustomToggle()
                                
                                ]
                                      ),
                                    
                                  ),
                                   Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                          "Permission to tag",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                   CustomToggle()
                                ]
                                      ),
                                    
                                  ),
                                   Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                              "Date of year",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                        width: 250,
                                        child: Text(
                                                "Do you want to show this year to public or not?",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                              ),
                                      ),
                                    ],
                                    
                                  ),
                                        
                                   CustomToggle()
                                ]
                                      ),
                                    
                                  ),
                                   Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                              "Save to archive",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                             Container(
                                        width: 250,
                                        child: Text(
                                                "Automatically save photos and videos to your archive",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                              ),
                                      ),
                                    ],
                                  ),
                                   CustomToggle()
                                ]
                                      ),
                                    
                                  ), 
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: SizedBox(
          width: 327.0,
          height: 60,
          child: TextButton(
            onPressed: () {
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=> Feed()), (route) => false);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Save",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  
                ]),
            style: ButtonStyle(
                // padding: MaterialStateProperty.all<EdgeInsets>(
                //     EdgeInsets.(15)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black)))),
          ),
        ),
                                  )
                                
                              ]),
                        ),
          ),
    ));
  }
}