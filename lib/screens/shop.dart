import 'package:contra/common/back-button.dart';
import 'package:contra/common/circular-box.dart';
import 'package:contra/common/friend.dart';
import 'package:contra/common/shop-item.dart';
import 'package:contra/common/transistion.dart';
import 'package:contra/screens/feed.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/navgation.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom-navigation.dart';

class Shops extends StatefulWidget {
  Shops({Key? key}) : super(key: key);

  @override
  State<Shops> createState() => _ShopsState();
}

class ShopData {
  String imagePath;
  Color color;
  String by;
  String name;
  String cost;

  ShopData(
      {required this.imagePath,
      required this.color,
      required this.by,
      required this.name,
      required this.cost});
}

class _ShopsState extends State<Shops> {
  int tag = 1;

  List<String> lists = [
    'Active Tag',
    'Small',
    'Blazer',
    'Tee',
    "Shirts",
    'Shoes'
  ];

  List<ShopData> shopItems = [
    ShopData(
        imagePath: 'assets/images/shirt1.svg',
        color: Colors.red,
        by: "by Dcrab",
        name: "Flash T-Shirt",
        cost: "\$545"),
    ShopData(
        imagePath: 'assets/images/shirt4.svg',
        color: Colors.green,
        by: "by Alisa Copany",
        name: "Blazer and stripe t-shirt",
        cost: "\$189"),
    ShopData(
      imagePath: 'assets/images/shirt3.svg',
      color: Colors.yellow,
      by: "Company name",
      name: "Hepor - Solid Jacket fur neck",
      cost: "\$389",
    ),
    ShopData(
        imagePath: 'assets/images/shirt4.svg',
        color: Colors.pink,
        by: "by Dcrab",
        name: "Rebousa - White striped tee",
        cost: "\$89"),
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
                        "Shops",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 36,
              child: ListView.builder(
                  // padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: lists.length,
                  itemBuilder: (context, i) {
                    return Center(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            tag = i;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: tag == i ? Colors.yellow : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1.5),
                            ),
                            // padding: const EdgeInsets.all(10.0),
                            child: Text(lists[i],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.0,
                                ))),
                      ),
                    );
                  }),
            ),
            // shopItems.map(e => Text('hi'));
            ...shopItems
                .map((e) => ShopItem(
                    imagePath: e.imagePath,
                    color: e.color,
                    by: e.by,
                    name: e.name,
                    cost: e.cost))
                .toList(),
          ]),
    ))));
  }
}
