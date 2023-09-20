// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class CustomProductTopWidget extends StatefulWidget {
  final String Title1;
  final String Title2;
  final int Price;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final Color favColor;
  const CustomProductTopWidget({
    super.key,
    required this.Title1,
    required this.Title2,
    required this.Price,
    required this.onPressed1,
    required this.onPressed2,
    required this.favColor,
  });

  @override
  State<CustomProductTopWidget> createState() => _CustomProductTopWidgetState();
}

class _CustomProductTopWidgetState extends State<CustomProductTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 1,
      color: const Color.fromARGB(255, 250, 251, 253),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              widget.Title1,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              widget.Title2,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    "assets/images/Image Icon.png",
                    color: const Color.fromARGB(255, 178, 187, 206),
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                ),
                Container(
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(167, 217, 224, 240),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          widget.onPressed1();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              dismissDirection: DismissDirection.endToStart,
                              duration: Duration(seconds: 2),
                              content: Text(
                                "Favourites Were Changed",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.24,
                                  color: Color.fromARGB(255, 250, 251, 253),
                                ),
                              ),
                              backgroundColor: Color.fromARGB(255, 145, 1, 20),
                            ),
                          );
                        },
                        icon: const Icon(Icons.favorite),
                        color: widget.favColor,
                      ),
                      IconButton(
                        onPressed: () {
                          widget.onPressed2();
                        },
                        icon: const Icon(Icons.more_vert),
                        color: const Color.fromARGB(255, 30, 34, 43),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 20),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "\$${widget.Price.toString()}/KG",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 42, 75, 160),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 42, 75, 160),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Center(
                    child: Text(
                      "New Price",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.24,
                        color: Color.fromARGB(255, 250, 251, 253),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
