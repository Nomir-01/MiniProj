import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Favs.dart';
import 'package:miniproj/Widgest/FavWidget1.dart';

import 'CartScreen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  void initState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 251, 253),
      appBar: AppBar(
        backgroundColor: Fav.isEmpty
            ? const Color.fromARGB(255, 42, 75, 160)
            : const Color.fromARGB(255, 145, 1, 20),
        title: Text(
          "Favorites (${Fav.length.toString()})",
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 248, 249, 251)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 248, 249, 251),
            ),
          )
        ],
      ),
      body: Fav.isEmpty
          ? Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: const Color.fromARGB(255, 250, 251, 253),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Favourites Is Empty",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 30, 34, 43),
                        ),
                      ),
                      Text(
                        "Add Some Items",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 30, 34, 43),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(children: [
              Expanded(
                child: FavWidget1(
                  onPressed: () {
                    initState();
                  },
                ),
              ),
            ]),
    );
  }
}
