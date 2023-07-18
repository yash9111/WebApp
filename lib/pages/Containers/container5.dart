// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/utils/constants.dart';
import 'package:landing_page/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileLayout(),
      desktop: (p0) => desktopLayout(),
    );
  }

  mobileLayout() {
    return Container();
  }

  desktopLayout() {
    return commonContainer(
        "Alwalys online",
        "Real-time\nsupport\nwith cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.",
        illustration3,
        false);
  }
}
