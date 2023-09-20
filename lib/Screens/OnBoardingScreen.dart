// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Widgest/OnBoardingWidget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 75, 160),
      body: SafeArea(
        child: OnBoardingWidget(),
      ),
    );
  }
}
