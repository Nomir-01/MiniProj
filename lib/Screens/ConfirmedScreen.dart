// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Screens/HomeScreen.dart';

class ConfirmedScreen extends StatefulWidget {
  const ConfirmedScreen({super.key});

  @override
  State<ConfirmedScreen> createState() => _ConfirmedScreenState();
}

class _ConfirmedScreenState extends State<ConfirmedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: const Color.fromARGB(255, 250, 251, 253),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.cancel,
                    size: 35,
                    color: Color.fromARGB(255, 248, 15, 15),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: const Size(140, 140),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Icon(
                            Icons.done,
                            size: 100,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          "Order Confirmed",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.24),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
