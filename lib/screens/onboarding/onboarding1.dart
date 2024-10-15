import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: SvgPicture.asset(
            'assets/images/onboarding-image1.svg',
            height: 250.0,
            width: 250.0,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
                child: Text(
              "Contra wireframe kit",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ))),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Text(
              "Wireframe is still important for ideation. It will help you to qyickly test idea.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 157.0,
                    height: 60,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          // padding: MaterialStateProperty.all<EdgeInsets>(
                          //     EdgeInsets.(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)))),
                    ),
                  ),
                  SizedBox(
                    width: 157.0,
                    height: 60,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoarding2()));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          // padding: MaterialStateProperty.all<EdgeInsets>(
                          //     EdgeInsets.(15)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)))),
                    ),
                  )
                ],
              ),
            )),
      ]),
    )));
  }
}
