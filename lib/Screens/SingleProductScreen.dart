import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Favs.dart';
import 'package:miniproj/Screens/CartScreen.dart';
import 'package:miniproj/Screens/FavouriteScreen.dart';

import '../CustomWidgets/CustomProductBottomWidget.dart';
import '../CustomWidgets/CustomProductTopWidget.dart';
import '../Functions/AddFav.dart';

class SingleProductScreen extends StatefulWidget {
  final List ProductList;
  final String SubHeading;
  final int Index;
  const SingleProductScreen({
    super.key,
    required this.ProductList,
    required this.Index,
    required this.SubHeading,
  });

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  // AddToFav(List Product, int index) {
  //   if (Product[index]["IsFav"] == false) {
  //     Product[index]["IsFav"] = true;
  //     Fav.add(Product[index]);
  //   } else {
  //     Product[index]["IsFav"] = false;
  //     Fav.remove(Product[index]);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 251, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 75, 160),
        title: Text(
          widget.ProductList[widget.Index]["Name"],
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 248, 249, 251)),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavouriteScreen(),
                      ),
                    );
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 145, 1, 20),
                  )),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 255, 200, 58),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomProductTopWidget(
            Title1: widget.ProductList[widget.Index]["Name"],
            Title2: widget.SubHeading,
            Price: widget.ProductList[widget.Index]["Price"],
            onPressed1: () async {
              await AddToFav(widget.ProductList, widget.Index);
              setState(() {});
            },
            onPressed2: () {},
            favColor: widget.ProductList[widget.Index]["IsFav"]
                ? Color.fromARGB(255, 145, 1, 20)
                : Color.fromARGB(255, 30, 34, 43),
          ),
          CustomProductBottomWidget(
            Details: widget.ProductList[widget.Index]["Desc"],
            ProductList: widget.ProductList,
            Index: widget.Index,
          ),
        ],
      ),
    );
  }
}
