// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:landing_page/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class container1 extends StatefulWidget {
  const container1({super.key});

  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileLayout(),
      desktop: desktopLayout(),
      tablet: mobileLayout(),
    );
  }

  mobileLayout() {
    return Container(
      child: Column(children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          child: Image(image: AssetImage(illustration1)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Track your Expenses to Save Money",
          style: TextStyle(
              height: 1.2, fontSize: w! / 10, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Helps you to organize your income and expenses",
          style: TextStyle(color: Colors.grey.shade400, fontSize: 24),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Container(
              height: 45,
              child: ElevatedButton.icon(
                  onPressed: () => {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(appColors.primary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ))),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Try Free demo",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Text("— Web, iOs and Android",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 24))
          ],
        )
      ]),
    );
  }

  desktopLayout() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 165, vertical: h! / 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Track your\nExpenses to\nSave Money",
              style: TextStyle(
                  height: 1.2, fontSize: w! / 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Helps you to organize your income and expenses",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  child: ElevatedButton.icon(
                      onPressed: () => {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(appColors.primary),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ))),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Try Free demo",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("— Web, iOs and Android",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 24))
              ],
            )
          ],
        )),
        Expanded(
            child: Container(
                height: 530, child: Image(image: AssetImage(illustration1))))
      ]),
    );
  }
}
