import 'package:flutter/material.dart';

import '../utils/constants.dart';

Widget commonContainer(String s1, s2, s3, image, bool isLeft) {
  return Container(
    color: Colors.white,
    height: 820,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
    child: Row(children: [
      isLeft
          ? Expanded(
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ),
            )
          : Container(),
      Expanded(
          child: Column(
        crossAxisAlignment:
            isLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(s1.toUpperCase(),
              style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              textAlign: TextAlign.start),
          SizedBox(
            height: 10,
          ),
          Text(
            s2,
            style: TextStyle(
                height: 1.1,
                color: Colors.black,
                fontSize: w! / 20,
                fontWeight: FontWeight.bold),
            textAlign: isLeft ? TextAlign.right : TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          Text(s3,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              textAlign: TextAlign.start),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: () => {},
            label: Text(
              "Learn More",
              style: TextStyle(color: Colors.deepOrange),
            ),
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.deepOrange,
            ),
          )
        ],
      )),
      !isLeft
          ? Expanded(
              child: Container(
                height: 530,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain)),
              ),
            )
          : Container(),
    ]),
  );
}

textWid(String s1, s2, s3) {
  return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(s1,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 24),
          textAlign: TextAlign.start),
      Text(
        s2,
        style: TextStyle(
            height: 1.2, fontSize: w! / 10, fontWeight: FontWeight.bold),
      ),
      Text(
        s3,
        style: TextStyle(color: Colors.grey.shade400, fontSize: 24),
        textAlign: TextAlign.start,
      )
    ]),
  );
}
