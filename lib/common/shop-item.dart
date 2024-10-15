import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopItem extends StatelessWidget {
  String imagePath;
  Color color;
  String by;
  String name;
  String cost;
  ShopItem(
      {Key? key,
      required this.imagePath,
      required this.color,
      required this.by,
      required this.name,
      required this.cost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 1.5))),
      child: Row(
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1.5)),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            child: SvgPicture.asset(
              imagePath,
              height: 76,
              width: 76,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Expanded(
            child: Container(
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        by,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            height: 0.9),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        cost,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            height: 0),
                      ),
                      Button()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget Button() {
  return Container(
    height: 36,
    width: 94,
    decoration: BoxDecoration(
        border: Border.all(width: 1.5),
        borderRadius: BorderRadius.circular(12)),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Icon(
              Icons.add,
              size: 24,
            ))
      ],
    ),
  );
}
