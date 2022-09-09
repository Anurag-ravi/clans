// ignore_for_file: prefer_const_constructors

import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({ Key? key,required this.text, required this.color, this.isWhite=false }) : super(key: key);
  final String text;
  final Color color;
  final bool isWhite;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth * 0.25,
      height: deviceWidth * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(deviceWidth * 0.05),
          color: color
      ),
      child: Center(child: Text(text,style: TextStyle(color: isWhite ? Colors.white : getSecondary(context)),)),
    );
  }
}