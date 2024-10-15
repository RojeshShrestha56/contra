import 'package:contra/common/back-button.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:contra/screens/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

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
                              Navigator.pop(context);
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
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 56,
                      child: OTPTextField(
                        length: 4,
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: Colors.grey[200]!,
                          borderColor: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 56,
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onChanged: (_) {},
                        onCompleted: (_) {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't get fav number?",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Get New",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sucess()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Verify',
                              style: TextStyle(fontSize: 24),
                            ), // <-- Text
                          ],
                        ),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)))),
                      )),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
