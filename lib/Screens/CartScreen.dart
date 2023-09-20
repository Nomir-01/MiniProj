import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomButton.dart';
import 'package:miniproj/Lists/Cart.dart';
import 'package:miniproj/Screens/CheckOutScreen.dart';
import 'package:miniproj/Screens/CompleteCartScreen.dart';
import 'package:miniproj/Widgest/CartWidget1.dart';
import 'package:miniproj/Widgest/CartWidget2.dart';
import 'package:miniproj/Widgest/CartWidget3.dart';

import '../Functions/FindTotalValue.dart';
import 'FavouriteScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // num total = 0;
  // totalValue() {
  //   for (int i = 0; i < Cart.length; i++) {
  //     total += Cart[i]["Qty"] * Cart[i]["Price"];
  //   }
  //   total += 50;
  //   return total;
  // }

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
                  builder: (context) => FavouriteScreen(),
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
      body: Cart.isEmpty
          ? Column(
              children: [
                CartWidget1(),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Color.fromARGB(255, 250, 251, 253),
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
                CartWidget1(),
                Expanded(
                  child: CartWidget2(
                    updateTotal: () {
                      totalValue();
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.7,
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompleteCartScreen(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 42, 75, 160),
                      ),
                    ),
                  ),
                ),
                CartWidget3(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOutScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
