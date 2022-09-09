// ignore_for_file: prefer_const_constructors

import 'package:clans/components/see_more_button.dart';
import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  const Member({Key? key, required this.asset, required this.name}) : super(key: key);
  final String asset;
  final String name;
  @override
  Widget build(BuildContext context) {
    bool th = Theme.of(context).brightness == Brightness.dark ? true : false;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: th ? Colors.grey[800] : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 6),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                    radius: deviceWidth * 0.14,
                    backgroundColor: getPrimary(context)),
                CircleAvatar(
                    radius: deviceWidth * 0.135,
                    backgroundColor: getBackground(context)),
                ClipOval(
                  child: Container(
                      width: deviceWidth * 0.26,
                      height: deviceWidth * 0.26,
                      child: Image.asset(asset,fit: BoxFit.cover,)),
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: deviceWidth * 0.08,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  SeeMore(text: "chat >>", color: Color(0xffFF4A4A), isWhite: true)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
