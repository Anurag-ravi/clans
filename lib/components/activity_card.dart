// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, required this.asset,required this.name}) : super(key: key);
  final String asset;
  final String name;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    bool isDark = Theme.of(context).brightness == Brightness.dark ? true : false;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: deviceWidth * 0.6,
      height: deviceWidth * 0.9,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: isDark ? Color(0xff424242) : Color(0xffeeeeee), width: 4)),
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
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
