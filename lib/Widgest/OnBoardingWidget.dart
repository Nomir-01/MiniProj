import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({
    super.key,
  });

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 42, 75, 160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your holiday \nshopping \ndelivered to Screen \none",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(250, 250, 251, 253),
                  ),
                ),
                Image.asset("assets/images/Emoji.png")
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10,
            child: Text(
              "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 178, 187, 206),
              ),
            ),
          ),
          Center(
              child: Image.asset(
            "assets/images/Image Icon.png",
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.height * 0.20,
          )),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Next Page"),
            ),
          )
        ],
      ),
    );
    ;
  }
}
