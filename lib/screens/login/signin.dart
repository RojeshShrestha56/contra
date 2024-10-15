import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:contra/screens/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/logo.svg',
                              height: 100.0,
                              width: 100.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      focusNode: textFieldFocusNode,
                      textAlignVertical: TextAlignVertical.center,
        
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
        
                        floatingLabelBehavior: FloatingLabelBehavior
                            .never, //Hides label on focus or if filled
                        hintText: "Email address",
                        hintStyle: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                        filled: true, // Needed for adding a fill color
                        fillColor: Colors.white,
                        isDense: true, // Reduces height a bit
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.all(Radius.circular(15)),
                        //     borderSide: BorderSide(
                        //       width: 1,
                        //     )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            widthFactor: 1.0,
                            heightFactor: 0.0,
                            child: Icon(
                              Icons.person,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      // textAlignVertical: TextAlignVertical.center
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      focusNode: textFieldFocusNode,
                      textAlignVertical: TextAlignVertical.center,
        
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
        
                        floatingLabelBehavior: FloatingLabelBehavior
                            .never, //Hides label on focus or if filled
                        hintText: "Password",
                        hintStyle: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                        filled: true, // Needed for adding a fill color
                        fillColor: Colors.white,
                        isDense: true, // Reduces height a bit
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 1.5, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.all(Radius.circular(15)),
                        //     borderSide: BorderSide(
                        //       width: 1,
                        //     )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            widthFactor: 1.0,
                            heightFactor: 0.0,
                            child: Icon(
                              Icons.lock,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      // textAlignVertical: TextAlignVertical.center
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(fontSize: 24),
                            ), // <-- Text
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              // <-- Icon
                              Icons.arrow_forward_ios,
                              size: 18.0,
                            ),
                          ],
                        ),
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
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You are New?",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp())),
                        child: Text(
                          "Create New",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
