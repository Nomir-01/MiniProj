import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomButton.dart';

class CustomProductBottomWidget extends StatefulWidget {
  final String Details;
  const CustomProductBottomWidget({
    super.key,
    required this.Details,
  });

  @override
  State<CustomProductBottomWidget> createState() =>
      _CustomProductBottomWidgetState();
}

class _CustomProductBottomWidgetState extends State<CustomProductBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                  BoxColor: Color.fromARGB(255, 250, 251, 253),
                  TextColor: Color.fromARGB(255, 42, 75, 160),
                  BorderColor: Color.fromARGB(167, 217, 224, 240),
                ),
                CustomButton(
                  ButtonText: "Buy Now",
                  BoxColor: Color.fromARGB(255, 42, 75, 160),
                  TextColor: Color.fromARGB(255, 250, 251, 253),
                  BorderColor: Color.fromARGB(255, 250, 251, 253),
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
                    fontSize: 28,
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
                      fontSize: 20,
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
