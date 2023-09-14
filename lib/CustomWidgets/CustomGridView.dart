import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Categories.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({
    super.key,
  });

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: Categories.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 242, 243, 243),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Categories[index]["Image"] ??
                        "assets/images/Image Icon.png",
                    height: 80,
                    width: 80,
                    color: const Color.fromARGB(255, 178, 187, 206),
                  ),
                  Text(
                    Categories[index]["Name"],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 30, 34, 43),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 100,
                    color: const Color.fromARGB(255, 30, 34, 43),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      Categories[index]["Desc"],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.24,
                        color: Color.fromARGB(255, 97, 106, 125),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
