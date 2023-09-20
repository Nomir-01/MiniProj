import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../CustomWidgets/CustomButton.dart';
import '../Functions/FindTotalValue.dart';
import '../Lists/Cart.dart';

class CartWidget3 extends StatefulWidget {
  final VoidCallback onPressed;
  const CartWidget3({
    super.key,
    required this.onPressed,
  });

  @override
  State<CartWidget3> createState() => _CartWidget3State();
}

class _CartWidget3State extends State<CartWidget3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 1,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 204, 204, 204),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 97, 106, 125),
                  ),
                ),
                Text(
                  "\$${(totalValue() + 10).toString()}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 30, 34, 43),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            ButtonText: "Proceed To Check Out",
            BoxColor: Color.fromARGB(255, 42, 75, 160),
            TextColor: Color.fromARGB(255, 250, 251, 253),
            BorderColor: Color.fromARGB(255, 204, 204, 204),
            Size1: MediaQuery.of(context).size.width * 0.55,
            Size2: MediaQuery.of(context).size.height * 0.065,
            onPressed: () {
              widget.onPressed();
            },
          ),
        ],
      ),
    );
  }
}
