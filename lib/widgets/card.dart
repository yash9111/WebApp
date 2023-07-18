import 'package:flutter/material.dart';

Widget card(String icon, head, subtitle, bool isCenter) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        blurRadius: 10,
        color: Colors.grey,
      )
    ]),
    padding: EdgeInsets.symmetric(vertical: 40),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(icon),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            head,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ]),
  );
}
