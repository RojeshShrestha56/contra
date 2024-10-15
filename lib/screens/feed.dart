import 'package:contra/common/bottom-sheet-modal.dart';
import 'package:contra/common/transistion.dart';
import 'package:contra/screens/login/signup.dart';
import 'package:contra/screens/navgation.dart';
import 'package:contra/screens/onboarding/onboarding2.dart';
import 'package:contra/screens/onboarding/onboarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class FeedData {
  String top;
  String middle;
  Color color;
  FeedData({required this.top, required this.middle, required this.color});
}

class _FeedState extends State<Feed> {
  final List<FeedData> datas = [
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.yellow),
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.pink),
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.lightBlue),
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.yellow),
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.grey),
    FeedData(
        top: 'by Lara Trina  •  12 March, 20',
        middle: 'I’m post title, Please keep it 2 line onely...',
        color: Colors.lightBlue),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    SlideTransistionRoute(
                                        child: Navigation(),
                                        direction: AxisDirection.left));
                              },
                              child: Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Contra",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.notifications, color: Colors.black)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                            children: datas
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      bottomSheet(context);
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Card(
                                          color: e.color,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Colors.black, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Container(
                                            // color: Colors.red,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 25, horizontal: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  e.top,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  e.middle,
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      height: 1.2,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                                .toList()),
                      )
                    ]),
              ),
            )));
  }
}
