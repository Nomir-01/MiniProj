import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomGridView.dart';
import 'package:miniproj/CustomWidgets/CustomTopWidget.dart';

import 'CartScreen.dart';

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
