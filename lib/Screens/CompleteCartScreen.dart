// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Widgest/CompleteCartWidget1.dart';

import '../Functions/FindTotalValue.dart';
import '../Lists/Cart.dart';
import '../Widgest/CartWidget2.dart';
import 'CheckOutScreen.dart';
import 'FavouriteScreen.dart';

class CompleteCartScreen extends StatefulWidget {
  const CompleteCartScreen({super.key});

  @override
  State<CompleteCartScreen> createState() => _CompleteCartScreenState();
}

class _CompleteCartScreenState extends State<CompleteCartScreen> {
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
              color: Color.fromARGB(255, 30, 34, 43)),
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
            icon: const Icon(Icons.favorite),
            color: const Color.fromARGB(255, 145, 1, 20),
          )
        ],
      ),
      body: Cart.isEmpty
          ? Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: const Color.fromARGB(255, 250, 251, 253),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Cart Is Empty",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 30, 34, 43),
                        ),
                      ),
                      Text(
                        "Add Some Items",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 30, 34, 43),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Expanded(
                  child: CartWidget2(
                    updateTotal: () {
                      totalValue();
                      setState(() {});
                    },
                  ),
                ),
                CompleteCartWidget1(
                  ButtonText: 'Proceed To Check Out',
                  OnPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckOutScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
