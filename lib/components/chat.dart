// ignore_for_file: prefer_const_constructors

import 'package:clans/components/see_more_button.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.name, required this.message}) : super(key: key);
  final String name;
  final String message;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        fontSize: deviceWidth * 0.07,
                        color: Color(0xffee5f31),),),
                Text(message,
                    style: TextStyle(
                      fontSize: deviceWidth * 0.05,
                    )),
              ],
            ),
            SeeMore(
              color: Color(0xffFAD901),
              text: "Reply",
            )
          ],
        ),
      ),
    );
  }
}
