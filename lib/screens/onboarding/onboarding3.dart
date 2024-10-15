import 'package:contra/screens/login/signin.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: SvgPicture.asset(
              'assets/images/onboarding-image3.svg',
              height: 250.0,
              width: 250.0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Open Source",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
                height: 1,
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            )),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 25),
          width: MediaQuery.of(context).size.width * 0.6,
          child: Center(
            child: Text(
              "Contra Wireframe Uikit",
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 36, height: 1.2, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 327.0,
          height: 60,
          child: TextButton(
            onPressed: () {
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=> SignIn()), (route) => false);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                  )
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
        )
      ]),
    )));
  }
}
