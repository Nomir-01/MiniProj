// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Lists/Categories.dart';
import 'package:miniproj/Screens/ProductsScreen.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({
    super.key,
  });

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        childAspectRatio: 5 / 6,
      ),
      itemCount: Categories.length,
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
                  builder: (context) => ProductScreen(
                    ProductName: Categories[index]["Name"],
                    ProductDesc: Categories[index]["Desc"],
                  ),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/Image Icon.png",
                  height: 80,
                  width: 80,
                  color: const Color.fromARGB(255, 178, 187, 206),
                ),
                Text(
                  Categories[index]["Name"],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 30, 34, 43),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: const Color.fromARGB(255, 30, 34, 43),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    Categories[index]["Desc"],
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
