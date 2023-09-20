import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/Lists/Payment.dart';

class CheckOutWidget2 extends StatefulWidget {
  const CheckOutWidget2({super.key});

  @override
  State<CheckOutWidget2> createState() => _CheckOutWidget2State();
}

class _CheckOutWidget2State extends State<CheckOutWidget2> {
  String? SelectedValue;
  @override
  void initState() {
    SelectedValue = "Option 1";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.2,
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: const Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                color: const Color.fromARGB(255, 255, 200, 58),
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: Color.fromARGB(255, 42, 75, 160),
                      value: "Option 1",
                      groupValue: SelectedValue,
                      onChanged: (value) {
                        selectedMethod[0]["Method"] = value;
                        setState(() {
                          SelectedValue = value;
                        });
                      },
                    ),
                    const Text(
                      "Cash",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Color.fromARGB(255, 42, 75, 160),
                      value: "Option 2",
                      groupValue: SelectedValue,
                      onChanged: (value) {
                        selectedMethod[0]["Method"] = value;
                        setState(() {
                          SelectedValue = value;
                        });
                      },
                    ),
                    const Text(
                      "Card",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
