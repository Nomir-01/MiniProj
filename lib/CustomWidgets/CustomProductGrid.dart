// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Screens/SingleProductScreen.dart';

class CustomProductGrid extends StatefulWidget {
  final List Product;
  final String SubHeading;
  const CustomProductGrid({
    super.key,
    required this.Product,
    required this.SubHeading,
  });

  @override
  State<CustomProductGrid> createState() => _CustomProductGridState();
}

class _CustomProductGridState extends State<CustomProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        childAspectRatio: 5 / 6,
      ),
      itemCount: widget.Product.length,
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 242, 243, 243),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleProductScreen(
                    ProductList: widget.Product,
                    SubHeading: widget.SubHeading,
                    Index: index,
                  ),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/Image Icon.png",
                    height: 80,
                    width: 80,
                    color: const Color.fromARGB(255, 178, 187, 206),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    widget.Product[index]["Name"].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 30, 34, 43),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "\$${widget.Product[index]["Price"].toString()}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 30, 34, 43),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.Product[index]["Desc"],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.24,
                      color: Color.fromARGB(255, 97, 106, 125),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
