import 'package:contra/common/back-button.dart';
import 'package:contra/screens/bottom-navigation.dart';
import 'package:contra/screens/feed.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:contra/screens/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.yellow,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 25, right: 25),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => BottomNavigation()),
                                  (route) => false);
                            },
                            child: CustomBackButton(),
                          )),
                      Center(
                        child: SvgPicture.asset(
                          'assets/images/verify.svg',
                          height: 250.0,
                          width: 250.0,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40)),
                          width: 61,
                        ),
                      ),
                      Text(
                        "Painter",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Genbai Benno',
                        style: TextStyle(fontSize: 36, height: 1.2),
                      ),
                      Text(
                        "I’m a painter you know. I can paint whatever I want. If you want to buy painting message.",
                        style: TextStyle(fontSize: 21, height: 1.4),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            width: 100,
                            child: Stack(
                              clipBehavior: Clip.hardEdge,
                              alignment: Alignment.centerLeft,
                              children: [
                                // // Text('hi'),
                                // Positioned(
                                //   child: Image.asset(
                                //     "assets/images/avatar-1.png",
                                //     height: 36.0,
                                //     width: 36.0,
                                //   ),
                                // ),

                                Positioned(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "assets/images/avatar-2.png",
                                    height: 36.0,
                                    width: 36.0,
                                  ),
                                )),
                                Positioned(
                                    left: 23,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/images/avatar-3.png",
                                        height: 36.0,
                                        width: 36.0,
                                      ),
                                    )),
                                Positioned(
                                    left: 46,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        "assets/images/avatar-1.png",
                                        height: 36.0,
                                        width: 36.0,
                                      ),
                                    )),
                                // Positioned(
                                //     left: 40,
                                //     child: ClipRRect(
                                //       borderRadius: BorderRadius.circular(8.0),
                                //       child: Image.asset(
                                //         "assets/images/avatar-3.png",
                                //         height: 150.0,
                                //         width: 100.0,
                                //       ),
                                //     ))
                              ],
                            ),
                          ),
                          Text(
                            '123k Followers',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 157.0,
                            height: 60,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  // padding: MaterialStateProperty.all<EdgeInsets>(
                                  //     EdgeInsets.(15)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.black)))),
                            ),
                          ),
                          SizedBox(
                            width: 157.0,
                            height: 60,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Friends",
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  // padding: MaterialStateProperty.all<EdgeInsets>(
                                  //     EdgeInsets.(15)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.black)))),
                            ),
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
