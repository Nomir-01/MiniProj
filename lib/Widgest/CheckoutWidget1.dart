import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckOutWidget1 extends StatefulWidget {
  const CheckOutWidget1({super.key});

  @override
  State<CheckOutWidget1> createState() => _ChekOoutWidget1State();
}

class _ChekOoutWidget1State extends State<CheckOutWidget1> {
  TextEditingController AddressController = TextEditingController();
  @override
  void initState() {
    AddressController.text = "Green Way 3000, Sylhet";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.15,
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      // color: Colors.brown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: const Text(
              "Delivery Address",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 30, 34, 43),
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              //color: Colors.brown,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 200, 58),
                  width: 2.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      AddressController.text,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Edit"),
                            content: TextField(
                              controller: AddressController,
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    setState(() {});
                                  },
                                  child: Text("Done"))
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 30, 34, 43),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
