import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomCard.dart';
import 'package:miniproj/CustomWidgets/CustomCard2.dart';

class CardWidget1 extends StatefulWidget {
  const CardWidget1({super.key});

  @override
  State<CardWidget1> createState() => _CardWidget1State();
}

class _CardWidget1State extends State<CardWidget1> {
  TextEditingController NameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCard(
            Title: 'Card Holder Name',
            Subtitle: 'e.g. Muhammad Nomir',
          ),
          CustomCard(
            Title: "Card Number",
            Subtitle: "xxxx xxxx xxxx xxxx",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomCard2(
                Title: "Exp Date",
                Subtitle: "xx/xx",
              ),
              Spacer(),
              CustomCard2(
                Title: "CVC",
                Subtitle: "xxx",
              ),
            ],
          )
        ],
      ),
    );
  }
}
