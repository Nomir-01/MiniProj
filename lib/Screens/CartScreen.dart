import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: Cart.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    title: Text(Cart[index]["Name"]),
                    subtitle: Text(Cart[index]["Qty"].toString()),
                    trailing: Text(
                        (Cart[index]["Qty"] * Cart[index]["Price"]).toString()),
                  ),
                );
              }))),
    );
  }
}
