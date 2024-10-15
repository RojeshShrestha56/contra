import 'package:contra/common/back-button.dart';
import 'package:contra/common/circular-box.dart';
import 'package:contra/common/friend.dart';
import 'package:contra/common/transistion.dart';
import 'package:contra/screens/feed.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/navgation.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../bottom-navigation.dart';

class Friends extends StatelessWidget {
  Friends({Key? key}) : super(key: key);

  List<dynamic> friends = [
    SingleFriend(
        image: 'assets/images/avatar-4.svg',
        name: 'Bill Rizer',
        job: 'Planet Designer'),
    SingleFriend(
        image: 'assets/images/onboarding-image1.svg',
        name: 'Genbei Yagy',
        job: 'Planet Designer'),
    SingleFriend(
        image: 'assets/images/onboarding-image2.svg',
        name: 'Lancy Neo',
        job: 'Rogue Corp'),
    SingleFriend(
        image: 'assets/images/onboarding-image3.svg',
        name: 'Bill Rizer',
        job: 'Developer'),
    SingleFriend(
        image: 'assets/images/signup.svg',
        name: 'Genbei Yagy',
        job: 'Scientist'),
    SingleFriend(
        image: 'assets/images/verify.svg',
        name: 'Lancy Neo',
        job: 'Physic Teacher'),
    SingleFriend(
        image: 'assets/images/avatar-4.svg',
        name: 'Lancy Neo',
        job: 'Consultant')
  ];
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
                        "Friends",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 56,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        // borderSide:BorderSide(width: 2.0, color: Colors.red)
                      ),
                      labelText: 'Search with love ...',
                    ),
                  ),
                ),
                ...friends
              ],
            )
          ]),
    ))));
  }
}
