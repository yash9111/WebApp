// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:landing_page/utils/colors.dart';
import 'package:landing_page/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  MobileNavBar() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.menu), navLogo()]),
    );
  }

  DesktopNavBar() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        navLogo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navButton("Features"),
            navButton("About us"),
            navButton("Pricing"),
            navButton("Feedback"),
          ],
        ),
        Container(
          // decoration: BoxDecoration(color: appColors.primary),
          height: 45,
          child: ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      side: BorderSide(color: appColors.primary),
                      borderRadius: BorderRadius.circular(10)))),
              child: Text(
                "Request a Demo",
                style: TextStyle(color: appColors.primary),
              )),
        )
      ]),
    );
  }

  navButton(String text) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          onPressed: () {},
        ));
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
