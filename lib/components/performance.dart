// ignore_for_file: prefer_const_constructors

import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class Performance extends StatelessWidget {
  const Performance({Key? key, required this.asset, required this.name})
      : super(key: key);
  final String asset;
  final String name;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: deviceWidth * 0.3,
            height: deviceWidth * 0.3,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(asset), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: getPrimary(context), width: 2)),
          ),
          Flexible(
              child: Text(name,
                  style: TextStyle(
                      fontSize: deviceWidth * 0.05,
                      overflow: TextOverflow.visible))),
        ],
      ),
    );
  }
}
