// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Widgest/CardWidget1.dart';
import 'package:miniproj/Widgest/CompleteCartWidget1.dart';

import 'ConfirmedScreen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 30, 34, 43),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 200, 58),
        title: const Text(
          "Add Card",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 30, 34, 43),
          ),
        ),
      ),
      body: Column(
        children: [
          const CardWidget1(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CompleteCartWidget1(
                  ButtonText: "Confirm Payment",
                  OnPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmedScreen()));
                  }),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
