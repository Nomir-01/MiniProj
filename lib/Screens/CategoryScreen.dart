// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/CustomWidgets/CustomGridView.dart';
import 'package:miniproj/CustomWidgets/CustomTopWidget.dart';

import 'CartScreen.dart';
import 'FavouriteScreen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                  )),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 255, 200, 58),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: const [
          CustomTopWidget(
            Title1: "Shop",
            Title2: "By Category",
          ),
          Expanded(
            child: CustomGridView(),
          ),
        ],
      ),
    );
  }
}
