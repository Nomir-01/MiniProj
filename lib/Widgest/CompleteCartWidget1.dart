// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../CustomWidgets/CustomButton.dart';
import '../Functions/FindTotalValue.dart';

class CompleteCartWidget1 extends StatefulWidget {
  final String ButtonText;
  final VoidCallback OnPressed;
  const CompleteCartWidget1({
    super.key,
    required this.ButtonText,
    required this.OnPressed,
  });

  @override
  State<CompleteCartWidget1> createState() => _CompleteCartWidget1State();
}

class _CompleteCartWidget1State extends State<CompleteCartWidget1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.225,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Subtotal",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 97, 106, 125),
                  ),
                ),
                Text(
                  "\$${totalValue().toString()}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 30, 34, 43),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 97, 106, 125),
                  ),
                ),
                Text(
                  "\$10",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 30, 34, 43),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 97, 106, 125),
                  ),
                ),
                Text(
                  "\$${(totalValue() + 10).toString()}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 30, 34, 43),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            ButtonText: widget.ButtonText,
            BoxColor: const Color.fromARGB(255, 42, 75, 160),
            TextColor: const Color.fromARGB(255, 250, 251, 253),
            BorderColor: const Color.fromARGB(255, 204, 204, 204),
            Size1: MediaQuery.of(context).size.width * 0.55,
            Size2: MediaQuery.of(context).size.height * 0.065,
            onPressed: () {
              widget.OnPressed();
            },
          ),
        ],
      ),
    );
  }
}
