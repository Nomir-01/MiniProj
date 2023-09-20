// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:miniproj/CustomWidgets/CustomButton.dart';

import '../Functions/AddToCart.dart';

class CustomProductBottomWidget extends StatefulWidget {
  final String Details;
  final List ProductList;
  final int Index;
  const CustomProductBottomWidget({
    super.key,
    required this.Details,
    required this.ProductList,
    required this.Index,
  });

  @override
  State<CustomProductBottomWidget> createState() =>
      _CustomProductBottomWidgetState();
}

class _CustomProductBottomWidgetState extends State<CustomProductBottomWidget> {
  // AddToCart(List Product, int Index) {
  //   if (Product[Index]["InCart"] == false) {
  //     Product[Index]["InCart"] = true;
  //     Product[Index]["Qty"] += 1;
  //     Cart.add(Product[Index]);
  //   } else {
  //     final int indexInCart = Cart.indexWhere(
  //       (product) => product["Name"] == Product[Index]["Name"],
  //     );
  //     if (indexInCart != -1) {
  //       Cart[indexInCart]["Qty"] += 1;
  //     } else {
  //       print("Error: Product not found in cart.");
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      height: MediaQuery.of(context).size.height * 0.32,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 42, 75, 160),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  ButtonText: "Add To Cart",
                  BoxColor: const Color.fromARGB(255, 250, 251, 253),
                  TextColor: const Color.fromARGB(255, 42, 75, 160),
                  BorderColor: const Color.fromARGB(167, 217, 224, 240),
                  Size1: MediaQuery.of(context).size.width * 0.4,
                  Size2: MediaQuery.of(context).size.height * 0.065,
                  onPressed: () {
                    AddToCart(widget.ProductList, widget.Index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        dismissDirection: DismissDirection.endToStart,
                        duration: Duration(seconds: 2),
                        content: Text(
                          "Product Added To Cart",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.24,
                            color: Color.fromARGB(255, 250, 251, 253),
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 255, 200, 58),
                      ),
                    );
                  },
                ),
                CustomButton(
                  ButtonText: "Buy Now",
                  BoxColor: const Color.fromARGB(255, 42, 75, 160),
                  TextColor: const Color.fromARGB(255, 250, 251, 253),
                  BorderColor: const Color.fromARGB(255, 250, 251, 253),
                  Size1: MediaQuery.of(context).size.width * 0.4,
                  Size2: MediaQuery.of(context).size.height * 0.065,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 250, 251, 253),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.Details,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 250, 251, 253),
                      letterSpacing: 0.24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
