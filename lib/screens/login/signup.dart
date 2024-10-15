import 'package:contra/common/back-button.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:contra/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            // margin: EdgeInsets.symmetric(horizontal: 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.95,
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Stack(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: InkWell(onTap: (){
                            Navigator.pop(context);
                          },child: CustomBackButton())),
                      Container(
                        // margin: EdgeInsets.only(top: 30),
                        height: 500,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/signup.svg',
                                  height: 400.0,
                                  width: 400.0,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        // top: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                // color: Colors.red,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      "Signup",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 36,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      // color: Colors.red,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25.0),
                                      child: Text(
                                        'You don’t think you should login first and behave like human not robot.',
                                        maxLines: 3,
                                        style: TextStyle(
                                            fontSize: 17, height: 1.2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Verify()));
                                          },
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                // <-- Icon
                                                Icons.email,
                                                size: 24.0,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 6),
                                                child: Text(
                                                  'Email',
                                                  style:
                                                      TextStyle(fontSize: 21),
                                                ),
                                              ), // <-- Text
                                            ],
                                          ),
                                          style: ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<Color>(
                                                      Colors.white),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.black),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      side: BorderSide(color: Colors.black)))),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Verify()));
                                          },
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                // <-- Icon
                                                Icons.facebook,
                                                size: 24.0,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 6),
                                                child: Text(
                                                  'Facebook',
                                                  style:
                                                      TextStyle(fontSize: 21),
                                                ),
                                              ), // <-- Text
                                            ],
                                          ),
                                          style: ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Color.fromARGB(
                                                          255, 11, 161, 221)),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                // side: BorderSide(
                                                //     // color: Colors.black
                                                //     )
                                              ))),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Verify()));
                                          },
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                // <-- Icon
                                                Icons.book,
                                                size: 24.0,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 6),
                                                child: Text(
                                                  'Twitter',
                                                  style:
                                                      TextStyle(fontSize: 21),
                                                ),
                                              ), // <-- Text
                                            ],
                                          ),
                                          style: ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Color.fromARGB(
                                                          255, 44, 232, 113)),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                // side: BorderSide(
                                                //     // color: Colors.black
                                                //     )
                                              ))),
                                        )),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
