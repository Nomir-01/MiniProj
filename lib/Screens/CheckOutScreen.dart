// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Lists/Payment.dart';
import 'package:miniproj/Screens/CardScreen.dart';
import 'package:miniproj/Screens/ConfirmedScreen.dart';
import 'package:miniproj/Widgest/CheckoutWidget1.dart';
import 'package:miniproj/Widgest/CompleteCartWidget1.dart';

import '../Lists/Cart.dart';
import '../Widgest/CheckoutWidget2.dart';
import 'FavouriteScreen.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 30, 34, 43),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 200, 58),
        title: Text(
          "Shopping Cart (${Cart.length.toString()})",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 30, 34, 43),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 145, 1, 20),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const CheckOutWidget1(),
          const CheckOutWidget2(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CompleteCartWidget1(
                ButtonText: 'Confirm Order',
                OnPressed: () {
                  if (selectedMethod[0]["Method"] == "Option 1") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmedScreen()));
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CardScreen()));
                  }
                },
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
