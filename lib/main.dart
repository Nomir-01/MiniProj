import 'package:flutter/material.dart';
import 'package:miniproj/CustomWidgets/CustomGridView.dart';
import 'package:miniproj/Screens/HomeScreen.dart';
import 'package:miniproj/Screens/OnBoardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
