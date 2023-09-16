import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/ProductsScreen.dart';

class CustomCategoryTile extends StatefulWidget {
  final String? Tileimage;
  final String Name;
  final String Desc;
  const CustomCategoryTile({
    super.key,
    this.Tileimage,
    required this.Name,
    required this.Desc,
  });

  @override
  State<CustomCategoryTile> createState() => _CustomCategoryTileState();
}

class _CustomCategoryTileState extends State<CustomCategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.4,
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
                ProductName: widget.Name,
                ProductDesc: widget.Desc,
              ),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              widget.Tileimage ?? "assets/images/Image Icon.png",
              height: 80,
              width: 80,
              color: const Color.fromARGB(255, 178, 187, 206),
            ),
            Text(
              widget.Name,
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
                widget.Desc,
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
  }
}
