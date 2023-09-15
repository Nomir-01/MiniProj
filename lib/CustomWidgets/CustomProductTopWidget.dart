import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProductTopWidget extends StatefulWidget {
  final String Title1;
  final String Title2;
  final int Price;
  const CustomProductTopWidget({
    super.key,
    required this.Title1,
    required this.Title2,
    required this.Price,
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
            margin: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
              widget.Title1,
              style: const TextStyle(
                fontSize: 55,
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
                fontSize: 55,
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
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Color.fromARGB(255, 30, 34, 43),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                        color: Color.fromARGB(255, 30, 34, 43),
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
                    fontSize: 20,
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
