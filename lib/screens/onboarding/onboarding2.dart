import 'package:contra/common/back-button.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

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
              'assets/images/onboarding-image2.svg',
              height: 280.0,
              width: 280.0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              "Contra wireframe kit",
              textAlign: TextAlign.start,
              style: TextStyle(
                height: 1,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Text(
              "Wireframe is still important for ideation. It will help you to qyickly test idea.",
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 21, height: 1.2, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Icon(
                  Icons.more_horiz_outlined,
                  size: 45,
                  color: Colors.pink,
                )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnBoarding3()));
                  },
                  child: CustomBackButton(
                    icon: Icon(Icons.arrow_forward_sharp),
                  ),
                )
              ],
            )),
      ]),
    )));
  }
}
