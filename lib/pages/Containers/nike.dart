// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nike extends StatelessWidget {
  const nike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          height: 960,
          width: 126,
          color: Color(0xffcbd5e0),
        ),
        Container(
          height: 960,
          width: 1200,
          // decoration: BoxDecoration(gradient:RadialGradient(colors: [Colors.black,Color()])),
          color: Colors.black,
        )
      ]),
    );
  }
}
