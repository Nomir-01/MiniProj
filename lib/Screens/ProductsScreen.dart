// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:miniproj/CustomWidgets/CustomProductGrid.dart';
import 'package:miniproj/Lists/FIshList.dart';
import 'package:miniproj/Lists/FruitList.dart';
import 'package:miniproj/Lists/MeatList.dart';
import 'package:miniproj/Lists/SnacksList.dart';
import 'package:miniproj/Lists/VegList.dart';

import '../CustomWidgets/CustomTopWidget.dart';
import 'CartScreen.dart';
import 'FavouriteScreen.dart';

class ProductScreen extends StatefulWidget {
  final String ProductName;
  final String ProductDesc;
  const ProductScreen({
    super.key,
    required this.ProductName,
    required this.ProductDesc,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List selectedList = [];
  ProductSelect() {
    if (widget.ProductName == "Fish") {
      selectedList = Fish;
    } else if (widget.ProductName == "Meat") {
      selectedList = Meat;
    } else if (widget.ProductName == "Fruits") {
      selectedList = Fruits;
    } else if (widget.ProductName == "Vegetables") {
      selectedList = Vegetables;
    } else if (widget.ProductName == "Snacks") {
      selectedList = Snacks;
    }
    return selectedList;
  }

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
        children: [
          CustomTopWidget(
            Title1: widget.ProductName,
            Title2: widget.ProductDesc,
          ),
          Expanded(
            child: CustomProductGrid(
              Product: ProductSelect(),
              SubHeading: widget.ProductDesc,
            ),
          ),
        ],
      ),
    );
  }
}
