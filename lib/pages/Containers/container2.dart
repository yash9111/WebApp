// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileLayout(),
      desktop: (p0) => desktopLayout(),
    );
  }

  mobileLayout() {
    return Container(
      width: double.infinity,
      // height: 200,
      child: Column(
        children: [
          Container(
            color: Colors.deepOrange,
            height: 240,
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 0),
            width: double.infinity,
            child: Expanded(
              child: Positioned(
                  // left: 43,
                  // right: 43,
                  // bottom: 0,
                  // top: 70,
                  child: Image(image: AssetImage(dashboard))),
            ),
          ),
          Container(
            // height: 188,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  desktopLayout() {
    return Container(
      width: double.infinity,
      height: 900,
      color: Colors.deepOrange,
      child: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Positioned(
                top: 0,
                // bottom: 259,
                left: 1024,
                right: 0,
                child: Image(image: AssetImage(vector1)),
              ),
              Positioned(
                // top: 287,
                right: 1047,
                left: -20,
                bottom: -20,
                child: Image(image: AssetImage(vector2)),
              ),
              Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Image(image: AssetImage(dashboard)))
            ]),
          ),
          Container(
            // height: 188,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  companyLogo(String image) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 32,
      width: 159,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(image))),
    );
  }
}
