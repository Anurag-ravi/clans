// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, required this.asset,required this.name}) : super(key: key);
  final String asset;
  final String name;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: deviceWidth * 0.6,
      height: deviceWidth * 0.9,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          border:
              // Border.all(color: Color(0xffffd800), width: 4)),
              Border.all(color: Color(0xffee5f31), width: 3)),
      child: Center(
        child: Container(
          width: deviceWidth * 0.45,
          height: deviceWidth * 0.2,
          decoration: BoxDecoration(
              color: Colors.black38, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: deviceWidth * 0.06,
                color: Color(0xffffd800),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
