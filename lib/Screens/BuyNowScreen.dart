// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Widgest/BuyNowWidget.dart';

import '../Lists/Payment.dart';
import '../Widgest/CheckoutWidget1.dart';
import '../Widgest/CheckoutWidget2.dart';
import 'CardScreen.dart';
import 'ConfirmedScreen.dart';
import 'FavouriteScreen.dart';

class BuyNowScreen extends StatefulWidget {
  final int Price;
  const BuyNowScreen({
    super.key,
    required this.Price,
  });

  @override
  State<BuyNowScreen> createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 30, 34, 43),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 200, 58),
        title: const Text(
          "Buy Now",
          style: TextStyle(
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
              child: BuyNowWidget(
                ButtonText: 'Confirm Order',
                onPressed: () {
                  if (selectedMethod[0]["Method"] == "Option 1") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfirmedScreen()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CardScreen()));
                  }
                },
                Price: widget.Price,
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
