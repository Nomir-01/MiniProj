// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class CustomTopWidget extends StatefulWidget {
  final String Title1;
  final String Title2;
  const CustomTopWidget({
    super.key,
    required this.Title1,
    required this.Title2,
  });

  @override
  State<CustomTopWidget> createState() => _CustomTopWidgetState();
}

class _CustomTopWidgetState extends State<CustomTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 1,
      color: const Color.fromARGB(255, 42, 75, 160),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
              widget.Title1,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 250, 251, 253),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              widget.Title2,
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 250, 251, 253),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
