import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProductTile extends StatefulWidget {
  final String? Tileimage;
  final String Price;
  final String Desc;
  const CustomProductTile({
    super.key,
    this.Tileimage,
    required this.Price,
    required this.Desc,
  });

  @override
  State<CustomProductTile> createState() => _CustomProductTileState();
}

class _CustomProductTileState extends State<CustomProductTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 243, 243),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              widget.Tileimage ?? "assets/images/Image Icon.png",
              height: 80,
              width: 80,
              color: Color.fromARGB(255, 178, 187, 206),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.Price}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 30, 34, 43),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                widget.Desc,
                style: TextStyle(
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
