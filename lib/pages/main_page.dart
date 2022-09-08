// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clans/components/bottom_nav_item.dart';
import 'package:clans/components/my_Drawer.dart';
import 'package:clans/components/my_appbar.dart';
import 'package:clans/utilities/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currPage = 0;
  
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    List<Widget> _list = [
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: deviceWidth * 0.95,
            height: deviceWidth * 0.95,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/main.jpg"),
                fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: getPrimary(context),width: 4)
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: deviceWidth * 0.93,
                    height: deviceWidth * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Clan Name: Gamerz",style: TextStyle(fontSize: deviceWidth*0.09,color: getPrimary(context))),
                        Text("28 Members, 5 Online",style: TextStyle(fontSize: deviceWidth*0.06,color: getPrimary(context))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Divider(
        thickness: 2,
        color: getPrimary(context),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("Acheivements",style: TextStyle(fontSize: deviceWidth*0.07)),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: deviceWidth * 0.95,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: getPrimary(context),width: 4)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 30,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Current League",style: TextStyle(fontSize: deviceWidth*0.05)),
                    Container(
                      width: deviceWidth*0.2,
                      height: deviceWidth*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/shield.png"))
                      ),
                      child: Center(child: Text("X",style: TextStyle(fontSize: deviceWidth*0.08,fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 30,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("League Ranking",style: TextStyle(fontSize: deviceWidth*0.05)),
                    Container(
                      width: deviceWidth*0.2,
                      height: deviceWidth*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/shield.png"))
                      ),
                      child: Center(child: Text("11",style: TextStyle(fontSize: deviceWidth*0.07,fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 30,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Experience",style: TextStyle(fontSize: deviceWidth*0.05)),
                    Container(
                      width: deviceWidth*0.2,
                      height: deviceWidth*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/shield.png"))
                      ),
                      child: Center(child: Text("20 xp",style: TextStyle(fontSize: deviceWidth*0.04,fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 30,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("# of wins",style: TextStyle(fontSize: deviceWidth*0.05)),
                    Container(
                      width: deviceWidth*0.2,
                      height: deviceWidth*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/shield.png"))
                      ),
                      child: Center(child: Text("3",style: TextStyle(fontSize: deviceWidth*0.08,fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(
        thickness: 2,
        color: getPrimary(context),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("Past Performances",style: TextStyle(fontSize: deviceWidth*0.07)),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: deviceWidth*0.3,
                  height: deviceWidth*0.3,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/girl.jpg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: getPrimary(context),width: 2)
                  ),
                ),
                Flexible(child: Text("Priya in International Debating League",style: TextStyle(fontSize: deviceWidth*0.05,overflow: TextOverflow.visible))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: deviceWidth*0.3,
                  height: deviceWidth*0.3,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/man.jpg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: getPrimary(context),width: 2)
                  ),
                ),
                Flexible(child: Text("Akshay in Global Quizzing Finals",style: TextStyle(fontSize: deviceWidth*0.05,overflow: TextOverflow.visible))),
              ],
            ),
          ),
          Center(child: Text("see more",style: TextStyle(color: getPrimary(context),fontWeight: FontWeight.bold),),)
        ]
      ),
      Divider(
        thickness: 2,
        color: getPrimary(context),
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("Live clan activities",style: TextStyle(fontSize: deviceWidth*0.07)),
      ),
    ];
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          MyAppbar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _list[index];
              },
              childCount: _list.length,
            ),
          ),
        ],
      ),
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
          elevation: 50,
          onTap: (value) {
            setState(() {
              currPage = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                0 == currPage ? Icons.home : Icons.home_outlined,
                color:
                    0 == currPage ? getPrimary(context) : getSecondary(context),
                size: deviceWidth * 0.1,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                1 == currPage ? Icons.star : Icons.star_border_outlined,
                color:
                    1 == currPage ? getPrimary(context) : getSecondary(context),
                size: deviceWidth * 0.1,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                2 == currPage ? Icons.shield_rounded : Icons.shield_outlined,
                color:
                    2 == currPage ? getPrimary(context) : getSecondary(context),
                size: deviceWidth * 0.1,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                3 == currPage
                    ? Icons.people_alt_rounded
                    : Icons.people_alt_outlined,
                color:
                    3 == currPage ? getPrimary(context) : getSecondary(context),
                size: deviceWidth * 0.1,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                      radius: currPage == 4 ? deviceWidth * 0.062 : 0,
                      backgroundColor: getPrimary(context)),
                  CircleAvatar(
                      radius: currPage == 4 ? deviceWidth * 0.050 : 0,
                      backgroundColor: getBackground(context)),
                  ClipOval(
                    child: Container(
                        width: currPage == 4
                            ? deviceWidth * 0.075
                            : deviceWidth * 0.08,
                        height: currPage == 4
                            ? deviceWidth * 0.075
                            : deviceWidth * 0.08,
                        child: Image.asset('assets/avatar.png')),
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
