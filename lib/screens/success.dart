import 'package:contra/screens/feed.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom-navigation.dart';

class Sucess extends StatelessWidget {
  const Sucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 80),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Color.fromARGB(255, 139, 44, 44),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/ok.svg',
                  height: 150.0,
                  width: 150.0,
                  allowDrawingOutsideViewBox: true,
                ),
                Container(
                    padding: EdgeInsets.only(top: 40, bottom: 15),
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                        child: Text(
                      "Authentication Sucessfull",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: Text(
                      "Wireframe is still important for ideation. It will help you to quickly test idea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                      },

                      child: Text(
                        'Okay',
                        style: TextStyle(fontSize: 24),
                      ), // <-- Text

                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)))),
                    )),
              ],
            )),
      ),
    );
  }
}
