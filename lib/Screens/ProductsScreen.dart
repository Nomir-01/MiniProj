import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomProductGrid.dart';
import 'package:miniproj/Lists/FIshList.dart';
import 'package:miniproj/Lists/FruitList.dart';
import 'package:miniproj/Lists/MeatList.dart';
import 'package:miniproj/Lists/SnacksList.dart';
import 'package:miniproj/Lists/VegList.dart';

import '../CustomWidgets/CustomGridView.dart';
import '../CustomWidgets/CustomTopWidget.dart';

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
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/images/bag.png")),
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
