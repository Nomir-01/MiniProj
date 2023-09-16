import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeWidget1 extends StatefulWidget {
  const HomeWidget1({super.key});

  @override
  State<HomeWidget1> createState() => _HomeWidget1State();
}

class _HomeWidget1State extends State<HomeWidget1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 1,
      color: const Color.fromARGB(255, 42, 75, 160),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 21, 48, 117),
              borderRadius: BorderRadius.circular(25.0),
            ),
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/Search.png"),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: Color.fromARGB(255, 248, 249, 251),
                    ),
                    decoration: InputDecoration(
                        hintText: "Search Products or store",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 136, 145, 165)),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "DELIVERY TO",
                        style: TextStyle(
                          fontSize: 11,
                          letterSpacing: 0.22,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 178, 187, 206),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Green Way 3000, Sylhet",
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 0.22,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 248, 249, 251),
                              )),
                          Image.asset(
                            "assets/images/arrow Iocn.png",
                            color: Color.fromARGB(255, 248, 249, 251),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "WITHIN",
                        style: TextStyle(
                          fontSize: 11,
                          letterSpacing: 0.22,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 178, 187, 206),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1 Hour",
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 0.22,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 248, 249, 251),
                              )),
                          Image.asset(
                            "assets/images/arrow Iocn.png",
                            color: Color.fromARGB(255, 248, 249, 251),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
