// ignore_for_file: prefer_const_constructors

import 'package:clans/components/bottom_nav_item.dart';
import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currPage = 0;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: deviceWidth * 0.2,
        child: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: currPage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currPage=value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                0==currPage?Icons.home: Icons.home_outlined,
                color: Theme.of(context).colorScheme.secondary,
                size: deviceWidth * 0.11,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                1==currPage?Icons.star: Icons.star_border_outlined,
                color: Theme.of(context).colorScheme.secondary,
                size: deviceWidth * 0.11,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                2==currPage?Icons.shield_rounded:Icons.shield_outlined,
                color: Theme.of(context).colorScheme.secondary,
                size: deviceWidth * 0.11,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                3==currPage?Icons.people_alt_rounded: Icons.people_alt_outlined,
                color: Theme.of(context).colorScheme.secondary,
                size: deviceWidth * 0.11,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: currPage == 4 ? deviceWidth * 0.062 : 0,
                      backgroundColor: getSecondary(context)
                    ),
                    CircleAvatar(
                      radius: currPage == 4 ? deviceWidth * 0.050 : 0,
                      backgroundColor: getBackground(context)
                    ),
                    ClipOval(
                      child: Container(
                        width: currPage == 4 ? deviceWidth*0.075 : deviceWidth*0.08,
                        height: currPage == 4 ? deviceWidth*0.075 : deviceWidth*0.08,
                        child: Image.asset('assets/avatar.png')
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}