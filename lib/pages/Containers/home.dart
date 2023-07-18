import 'package:flutter/material.dart';
import 'package:landing_page/pages/Containers/containeer3.dart';
import 'package:landing_page/pages/Containers/container1.dart';
import 'package:landing_page/pages/Containers/container2.dart';
import 'package:landing_page/pages/Containers/nike.dart';
import 'package:landing_page/widgets/commonContainer.dart';
import 'package:landing_page/widgets/navBar.dart';

import '../../utils/constants.dart';
import 'container4.dart';
import 'container5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          navbar(),
          container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5(),
          

          // nike()
          // container3()
        ]),
      )),
    );
  }
}
