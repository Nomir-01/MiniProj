import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProductTopWidget extends StatefulWidget {
  final String Title1;
  final String Title2;
  const CustomProductTopWidget({
    super.key,
    required this.Title1,
    required this.Title2,
  });

  @override
  State<CustomProductTopWidget> createState() => _CustomProductTopWidgetState();
}

class _CustomProductTopWidgetState extends State<CustomProductTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 1,
      color: Color.fromARGB(255, 250, 251, 253),
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
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Image Icon.png",
                  color: Color.fromARGB(255, 178, 187, 206),
                ),
                Container(
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(167, 217, 224, 240),
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
          )
        ],
      ),
    );
  }
}
