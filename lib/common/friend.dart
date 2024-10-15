import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleFriend extends StatelessWidget {
  String image;
  String name;
  String job;

  SingleFriend(
      {Key? key, required this.image, required this.name, required this.job})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 84,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(350.0),
            child: SvgPicture.asset(
              image,
              height: 50.0,
              width: 50.0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    job,
                    style: TextStyle(fontSize: 13, height: 0),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 74.0,
            height: 36,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Delete",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black)))),
            ),
          ),
        ],
      ),
    );
  }
}
