// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/CustomWidgets/CustomCategoriesTile.dart';
import 'package:miniproj/CustomWidgets/CustomProductTile.dart';
import 'package:miniproj/CustomWidgets/CustomSlidingTiles.dart';
import 'package:miniproj/Lists/Categories.dart';
import 'package:miniproj/Screens/CategoryScreen.dart';

class HomeWidget2 extends StatefulWidget {
  const HomeWidget2({super.key});

  @override
  State<HomeWidget2> createState() => _HomeWidget2State();
}

class _HomeWidget2State extends State<HomeWidget2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CustomSlidingTiles(
                Tilecolor: Color.fromARGB(255, 249, 176, 35),
                Tileimage: "assets/images/Image Icon.png",
                Discounttext: "50% OFF",
              ),
              CustomSlidingTiles(
                Tilecolor: Color.fromARGB(255, 255, 188, 110),
                Tileimage: "assets/images/Image Icon.png",
                Discounttext: "30% OFF",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 15),
          width: MediaQuery.of(context).size.width * 0.52,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const Text(
            "Categories",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCategoryTile(
                Name: Categories[0]["Name"],
                Desc: Categories[0]["Desc"],
              ),
              CustomCategoryTile(
                Name: Categories[1]["Name"],
                Desc: Categories[1]["Desc"],
              ),
              CustomCategoryTile(
                Name: Categories[2]["Name"],
                Desc: Categories[2]["Desc"],
              ),
              CustomCategoryTile(
                Name: Categories[3]["Name"],
                Desc: Categories[3]["Desc"],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 242, 243, 243),
                        fixedSize: const Size(70, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryScreen(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 30, 34, 43),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 15),
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const Text(
            "Deals",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CustomProductTile(
                Price: "500",
                Desc: "Orange Package 1 | 1 bundle",
              ),
              CustomProductTile(
                Price: "500",
                Desc: "Orange Package 1 | 1 bundle",
              ),
              CustomProductTile(
                Price: "500",
                Desc: "Orange Package 1 | 1 bundle",
              ),
              CustomProductTile(
                Price: "500",
                Desc: "Orange Package 1 | 1 bundle",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
