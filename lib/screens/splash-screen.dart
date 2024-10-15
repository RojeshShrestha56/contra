import 'package:contra/screens/login/signin.dart';
import 'package:contra/screens/onboarding/onboarding1.dart';
import 'package:contra/utils/hex-convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000), () async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      bool _seen = pref.getBool('seen') ?? false;

      if (_seen) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SignIn()),
            (route) => false);
      } else {
        await pref.setBool('seen', true);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => OnBoarding1()),
            (route) => false);
      }
    });
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: HexColor("#295FE4")),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Center(
                  child: SvgPicture.asset(
                'assets/images/logo.svg',
                height: 150.0,
                width: 150.0,
                allowDrawingOutsideViewBox: true,
              )),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 60.0),
                    child: Text(
                      'CONTRA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "RubikMicrobe",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ))
            ],
          )),
    );
  }
}
