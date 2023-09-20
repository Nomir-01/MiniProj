// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:miniproj/Lists/OnBoarding.dart';
import 'package:miniproj/Screens/HomeScreen.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({
    super.key,
  });

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: 2,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: ((context, index) {
              return Container(
                color: const Color.fromARGB(255, 42, 75, 160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your holiday \nshopping \ndelivered to ${OnBoarding[index]["title"]} \nDoor Steps",
                            style: const TextStyle(
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
                        "There's something for everyone to enjoy with Something ${OnBoarding[index]["subtitle"]}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 178, 187, 206),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: _currentPage < 2 - 1 ? 5 : 2,
                            width: _currentPage < 2 - 1 ? 40 : 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            height: _currentPage < 2 - 1 ? 2 : 5,
                            width: _currentPage < 2 - 1 ? 30 : 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/Image Icon.png",
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.height * 0.20,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ElevatedButton.icon(
            onPressed: () {
              if (_currentPage < 2 - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              }
            },
            label: Text(
              _currentPage < 2 - 1 ? "Next" : "Get Started",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.24,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
            icon: const Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 30, 34, 43),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 250, 251, 253),
              fixedSize: Size(
                MediaQuery.of(context).size.width * 0.6,
                MediaQuery.of(context).size.height * 0.08,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
