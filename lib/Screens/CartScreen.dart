import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Cart.dart';
import 'package:miniproj/Widgest/CartWidget1.dart';
import 'package:miniproj/Widgest/CartWidget2.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 30, 34, 43),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 200, 58),
        title: const Text(
          "Shopping Cart (5)",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 30, 34, 43)),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: Column(
        children: [
          CartWidget1(),
          Expanded(
            child: CartWidget2(),
          ),
        ],
      ),
    );
  }
}
