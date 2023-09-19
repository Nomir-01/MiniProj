import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartWidget1 extends StatefulWidget {
  const CartWidget1({super.key});

  @override
  State<CartWidget1> createState() => _CartWidget1State();
}

class _CartWidget1State extends State<CartWidget1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 1,
          color: const Color.fromARGB(255, 255, 200, 58),
          child: Container(
            margin: const EdgeInsets.only(right: 30, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scaleX: 7,
                  scaleY: 5,
                  child: const Text(
                    "#",
                    style: TextStyle(
                      height: 1.35,
                      fontSize: 100,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 249, 176, 35),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/Vector 368.png",
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text("OFF!!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 250, 251, 253),
                        )),
                    const Text(
                      "25%",
                      style: TextStyle(
                        fontSize: 110,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 250, 251, 253),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 1,
          color: const Color.fromARGB(255, 249, 176, 35),
          child: const Center(
            child: Text(
              "Use code #HalalFood at Checkout",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 30, 34, 43),
                letterSpacing: 0.25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
