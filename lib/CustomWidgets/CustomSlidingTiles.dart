import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomSlidingTiles extends StatefulWidget {
  final Color Tilecolor;
  final String? Tileimage;
  final String? Discounttext;
  const CustomSlidingTiles({
    super.key,
    required this.Tilecolor,
    required this.Tileimage,
    this.Discounttext,
  });

  @override
  State<CustomSlidingTiles> createState() => _CustomSlidingTilesState();
}

class _CustomSlidingTilesState extends State<CustomSlidingTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: widget.Tilecolor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Image.asset(
              widget.Tileimage ?? "assets/images/Image Icon.png",
              height: 80,
              width: 80,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Get",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(250, 250, 251, 253),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  widget.Discounttext ?? "50% OFF",
                  style: const TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(250, 250, 251, 253),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "On First 03 Orders",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(250, 250, 251, 253),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
