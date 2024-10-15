import 'package:contra/screens/onboarding/friends.dart';
import 'package:contra/screens/privacy.dart';
import 'package:contra/screens/profile.dart';
import 'package:contra/screens/settings.dart';
import 'package:contra/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';

class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        // Swiping in right direction.
        // if (details.delta.dx > 0) {
        //   print('right');
        // }

        // Swiping in left direction.
        if (details.delta.dx < 0) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 32,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shops()));
                  },
                  child: Text(
                    "Shop",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Friends()));
                  },
                  child: Text(
                    "Friends",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Text(
                    "Setting",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Privacy()));
                  },
                  child: Text(
                    "Privacy",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Center(
                child: Column(
                  children: [
                    Text(
                      "contra",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      '1.0',
                      style: TextStyle(fontSize: 21),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
