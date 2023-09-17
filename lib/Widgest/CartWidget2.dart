import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Lists/Cart.dart';

class CartWidget2 extends StatefulWidget {
  const CartWidget2({super.key});

  @override
  State<CartWidget2> createState() => _CartWidget2State();
}

class _CartWidget2State extends State<CartWidget2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            ListTile(
              leading: Image.asset(
                "assets/images/Image Icon2.png",
                color: Color.fromARGB(255, 30, 34, 43),
              ),
              title: Text(
                Cart[index]["Name"],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 34, 43),
                ),
              ),
              subtitle: Text(
                Cart[index]["Price"].toString(),
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle_outlined,
                        color: Color.fromARGB(255, 204, 204, 204),
                      )),
                  Text(
                    (Cart[index]["Qty"]).toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 30, 34, 43),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outlined,
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
