import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({ Key? key,required this.title }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
              fontSize: deviceWidth * 0.09,
              color: getPrimary(context),
              fontWeight: FontWeight.w600),
        ),
      );
  }
}