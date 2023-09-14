import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Widgest/ProductWidget.dart';

class SingleProductScreen extends StatefulWidget {
  final List ProductList;
  final String SubHeading;
  final int Index;
  const SingleProductScreen({
    super.key,
    required this.ProductList,
    required this.Index,
    required this.SubHeading,
  });

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 75, 160),
        title: Text(
          widget.ProductList[widget.Index]["Name"],
          style: const TextStyle(
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
      body: ProductWidget(
        ProductList: widget.ProductList,
        SubHeading: widget.SubHeading,
        Index: widget.Index,
      ),
    );
  }
}
