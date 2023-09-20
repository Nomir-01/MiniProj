// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Functions/AddFav.dart';
import 'package:miniproj/Functions/AddToCart.dart';
import 'package:miniproj/Lists/Favs.dart';

import '../Functions/FindListFunc.dart';

class FavWidget1 extends StatefulWidget {
  final VoidCallback onPressed;
  const FavWidget1({
    super.key,
    required this.onPressed,
  });

  @override
  State<FavWidget1> createState() => _FavWidget1State();
}

class _FavWidget1State extends State<FavWidget1> {
  AddToCartFav(index) {
    final productNameToRemove = Fav[index]["Name"];
    final productListName = Fav[index]["Category"];
    List productList = FindList(productListName);
    final productIndex = productList
        .indexWhere((product) => product["Name"] == productNameToRemove);
    AddToCart(productList, productIndex);
  }

  RemoveFav(index) {
    final productNameToRemove = Fav[index]["Name"];
    final productListName = Fav[index]["Category"];
    List productList = FindList(productListName);
    final productIndex = productList
        .indexWhere((product) => product["Name"] == productNameToRemove);
    AddToFav(productList, productIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Fav.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ListTile(
              leading: Image.asset(
                "assets/images/Image Icon2.png",
                color: const Color.fromARGB(255, 30, 34, 43),
              ),
              title: Text(
                Fav[index]["Name"],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
              ),
              subtitle: Text(
                "\$${Fav[index]["Price"].toString()}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        AddToCartFav(index);
                      },
                      icon: const Icon(
                        Icons.shopping_cart_checkout,
                        color: Color.fromARGB(255, 204, 204, 204),
                      )),
                  IconButton(
                      onPressed: () async {
                        await RemoveFav(index);
                        widget.onPressed();
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.block,
                        color: Color.fromARGB(255, 204, 204, 204),
                      )),
                ],
              ),
            ),
            Container(
              height: 1.5,
              width: MediaQuery.of(context).size.width * 0.85,
              color: const Color.fromARGB(255, 235, 235, 251),
            )
          ],
        );
      }),
    );
  }
}
