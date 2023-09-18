import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Widgest/HomeWidget1.dart';
import 'package:miniproj/Widgest/HomeWidget2.dart';

import 'CartScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 75, 160),
        title: const Text(
          "Hey, Halal",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 248, 249, 251)),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 248, 249, 251),
                  )),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 248, 249, 251),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          HomeWidget1(),
          Expanded(
            child: SingleChildScrollView(
              child: HomeWidget2(),
            ),
          ),
        ],
      ),
    );
  }
}
