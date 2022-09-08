import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavItem(IconData ic1,IconData ic2,bool isActive,BuildContext context){
  double deviceWidth = MediaQuery.of(context).size.width;
  return BottomNavigationBarItem(
        label: '',
        icon: IconButton(
          onPressed: (){}, 
          icon: Icon(
            isActive?ic2: ic1,
            color: Theme.of(context).colorScheme.secondary,
            size: deviceWidth * 0.09,
            ),
          ),
      );
}