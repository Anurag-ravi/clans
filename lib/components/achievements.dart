// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  const Achievements(
      {Key? key,
      required this.achievement,
      required this.rank,
      required this.factor})
      : super(key: key);
  final String achievement;
  final String rank;
  final double factor;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(achievement, style: TextStyle(fontSize: deviceWidth * 0.05)),
          Container(
            width: deviceWidth * 0.2,
            height: deviceWidth * 0.2,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/shield.png"))),
            child: Center(
              child: Text(
                rank,
                style: TextStyle(
                    fontSize: deviceWidth * factor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
