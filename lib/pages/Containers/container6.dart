import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: deskLayout(),
      desktop: deskLayout(),
    );
  }

  Widget deskLayout() {
    return Expanded(
      child: Container(
    
    
    
    
    
    
      ),
    );
  }
}
