// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Functions/FindListFunc.dart';

import '../Lists/Cart.dart';

class CartWidget2 extends StatefulWidget {
  final VoidCallback updateTotal;
  const CartWidget2({
    super.key,
    required this.updateTotal,
  });

  @override
  State<CartWidget2> createState() => _CartWidget2State();
}

class _CartWidget2State extends State<CartWidget2> {
  int cartCount = 0;
  cartlength() {
    if (Cart.length > 3) {
      cartCount = 3;
    } else {
      cartCount = Cart.length;
    }
    return cartCount;
  }

  cartItemAdd(index) {
    Cart[index]["Qty"] += 1;
    widget.updateTotal();
    setState(() {});
  }

  cartItemRemove(index) {
    if (Cart[index]["Qty"] > 1) {
      Cart[index]["Qty"] -= 1;
    } else {
      final productNameToRemove = Cart[index]["Name"];
      final productListName = Cart[index]["Category"];
      List productList = FindList(productListName);
      final productIndex = productList
          .indexWhere((product) => product["Name"] == productNameToRemove);
      if (productIndex != -1) {
        productList[productIndex]["InCart"] = false;
        productList[productIndex]["Qty"] = 0;
      }
      Cart.remove(Cart[index]);
    }
    widget.updateTotal();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartlength(),
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ListTile(
              leading: Image.asset(
                "assets/images/Image Icon2.png",
                color: const Color.fromARGB(255, 30, 34, 43),
              ),
              title: Text(
                Cart[index]["Name"],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
              ),
              subtitle: Text(
                "\$${Cart[index]["Price"].toString()}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        cartItemRemove(index);
                      },
                      icon: const Icon(
                        Icons.remove_circle_outlined,
                        color: Color.fromARGB(255, 204, 204, 204),
                      )),
                  Text(
                    (Cart[index]["Qty"]).toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 30, 34, 43),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        cartItemAdd(index);
                      },
                      icon: const Icon(
                        Icons.add_circle_outlined,
                        color: Color.fromARGB(255, 204, 204, 204),
                      )),
                ],
              ),
            ),
            Container(
              height: 1.5,
              width: MediaQuery.of(context).size.width * 0.85,
              color: const Color.fromARGB(255, 235, 235, 251),
            )
          ],
        );
      }),
    );
  }
}
