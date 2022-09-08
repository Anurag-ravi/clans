// ignore_for_file: prefer_const_constructors, file_names

import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.png'),
                        radius: deviceWidth * 0.15,
                      ),
                      Text(
                        "Anurag Ravi",
                        style: TextStyle(fontSize: deviceWidth * 0.07),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: getPrimary(context),
                    
                  ),
                ),
                ListTile(
                  title: Text('About US'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: Text('Contact Us'),
                  onTap: () {
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: Text("\u00a9 2022, Anurag Ravi, all rights reserved",style: TextStyle(fontSize: 13),),
              ),
            )
          ],
        ),
      );
  }
}