// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomCard2 extends StatefulWidget {
  final String Title;
  final String Subtitle;
  const CustomCard2({
    super.key,
    required this.Title,
    required this.Subtitle,
  });

  @override
  State<CustomCard2> createState() => _CustomCard2State();
}

class _CustomCard2State extends State<CustomCard2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              widget.Title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                color: const Color.fromARGB(255, 255, 200, 58),
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
                decoration: InputDecoration(
                  hintText: widget.Subtitle,
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 136, 145, 165),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
