// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class CustomProductTile extends StatefulWidget {
  final String? Tileimage;
  final String Price;
  final String Desc;
  final VoidCallback InkWellOnPress;
  final VoidCallback IconOnPress;
  const CustomProductTile({
    super.key,
    this.Tileimage,
    required this.Price,
    required this.Desc,
    required this.InkWellOnPress,
    required this.IconOnPress,
  });

  @override
  State<CustomProductTile> createState() => _CustomProductTileState();
}

class _CustomProductTileState extends State<CustomProductTile> {
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
          widget.InkWellOnPress();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              widget.Tileimage ?? "assets/images/Image Icon.png",
              height: 80,
              width: 80,
              color: const Color.fromARGB(255, 178, 187, 206),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.Price}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 30, 34, 43),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        widget.IconOnPress();
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
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
