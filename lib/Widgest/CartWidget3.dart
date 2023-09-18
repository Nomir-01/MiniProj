import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../CustomWidgets/CustomButton.dart';
import '../Lists/Cart.dart';

class CartWidget3 extends StatefulWidget {
  const CartWidget3({super.key});

  @override
  State<CartWidget3> createState() => _CartWidget3State();
}

class _CartWidget3State extends State<CartWidget3> {
  num total = 0;
  totalValue() {
    total = 0;
    for (int i = 0; i < Cart.length; i++) {
      total += Cart[i]["Qty"] * Cart[i]["Price"];
    }
    total += 50;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 1,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
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
                  "\$${totalValue().toString()}",
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
            Size1: 200,
            Size2: 50,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
