import 'package:flutter/material.dart';
import 'package:landing_page/pages/Containers/home.dart';
import 'package:landing_page/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpense',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'HindSiliguri',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          brightness: Brightness.light,
          primaryColor: appColors.primary),
      home: Home(),
    );
  }
}
