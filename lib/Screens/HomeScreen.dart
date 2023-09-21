// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miniproj/Widgest/HomeWidget1.dart';
import 'package:miniproj/Widgest/HomeWidget2.dart';

import 'CartScreen.dart';
import 'FavouriteScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Exit App"),
            content: const Text("Do you want to exit the app?"),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 75, 160),
                ),
                child: const Text("No"),
              ),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 75, 160),
                ),
                child: const Text("Yes"),
              ),
            ],
          ),
        ).then((value) => value ?? false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 42, 75, 160),
          title: const Text(
            "Hey, Halal",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 248, 249, 251)),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 145, 1, 20),
                    )),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 255, 200, 58),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: const [
            HomeWidget1(),
            Expanded(
              child: SingleChildScrollView(
                child: HomeWidget2(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
