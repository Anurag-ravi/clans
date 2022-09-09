// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clans/components/achievements.dart';
import 'package:clans/components/activity_card.dart';
import 'package:clans/components/bottom_nav_item.dart';
import 'package:clans/components/chat.dart';
import 'package:clans/components/member.dart';
import 'package:clans/components/my_Drawer.dart';
import 'package:clans/components/my_appbar.dart';
import 'package:clans/components/performance.dart';
import 'package:clans/components/see_more_button.dart';
import 'package:clans/components/title.dart';
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
    List<Widget> _acheivement = [
      MyTitle(title: "Achievements"),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: deviceWidth * 0.95,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: getPrimary(context), width: 4)),
          child: Column(
            children: [
              Achievements(
                  achievement: "Current League", rank: "X", factor: 0.08),
              Achievements(
                  achievement: "League Ranking", rank: "11", factor: 0.07),
              Achievements(
                  achievement: "Experience", rank: "20 xp", factor: 0.04),
              Achievements(achievement: "# of wins", rank: "3", factor: 0.08),
            ],
          ),
        ),
      ),
    ];
    List<Widget> _performance = [
      MyTitle(title: "Past Performances"),
      Column(children: [
        Performance(
            asset: "assets/girl.jpg",
            name: "Priya in International Debating League"),
        Performance(
            asset: "assets/man.jpg", name: "Akshay in Global Quizzing Finals"),
        currPage==0? Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currPage = 1;
                          });
                        },
                        child: SeeMore(
                                          color: getPrimary(context),
                                          text: "see more",
                                        ),
                      )): Container()
      ]),
      SizedBox(
        height: 10,
      ),
    ];
    List<Widget> _activities = [
      MyTitle(title: "Live clan activities"),
    ];
    List<Widget> _home = [
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
                border: Border.all(color: getPrimary(context), width: 4)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: deviceWidth * 0.93,
                    height: deviceWidth * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Clan Name: Gamerz",
                            style: TextStyle(
                                fontSize: deviceWidth * 0.09,
                                color: getPrimary(context))),
                        Text("28 Members, 5 Online",
                            style: TextStyle(
                                fontSize: deviceWidth * 0.06,
                                color: getPrimary(context))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ];
    List<Widget> _discussion = [
      MyTitle(title: "Clan Discussions"),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chat(
                          name: "General Thread",
                          message: "15 unread messages"),
                      Chat(
                          name: "(live) Trading C..",
                          message: "10 unread messages"),
                      Chat(
                          name: "(live) Treasure ..",
                          message: "9 unread messages"),
                      SizedBox(height: 10),
                      currPage==0? GestureDetector(
                        onTap: () {
                          setState(() {
                            currPage = 1;
                          });
                        },
                        child: Center(
                        child: SeeMore(
                                          color: getPrimary(context),
                                          text: "see more",
                                        )),
                      ): Container()
                    ],
                  ),
                ),
    ];
    List<Widget> _members = [
      MyTitle(title: "Clan Members"),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Member(asset: "assets/b1.jpg",name: "Fadd Gamer"),
                      Member(asset: "assets/g1.jpg",name: "Xoho girl"),
                      Member(asset: "assets/b2.jpg",name: "G pro"),
                      SizedBox(height: 10),
                      currPage==0? GestureDetector(
                        onTap: () {
                          setState(() {
                            currPage = 3;
                          });
                        },
                        child: Center(
                        child: SeeMore(
                                          color: getPrimary(context),
                                          text: "see more",
                                        )),
                      ): Container()
                    ],
                  ),
                ),
    ];
    List<Widget> _profile = [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 6),
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
                      child: Image.asset("assets/avatar.png",fit: BoxFit.cover,)),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Anurag Ravi",
                    style: TextStyle(
                      fontSize: deviceWidth * 0.08,
                      fontWeight: FontWeight.w500,
                      color: getPrimary(context),
                    ),
                  ),
                  SizedBox(height: 5),
                  SeeMore(text: "Update Dp", color: Color(0xffFAD901))
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: deviceWidth * 0.95,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xffee5f31), width: 3)),
          child: Column(
            children: [
              Achievements(
                  achievement: "# matches played", rank: "235", factor: 0.06),
              Achievements(achievement: "# of wins", rank: "178", factor: 0.06),
              Achievements(
                  achievement: "Level", rank: "11", factor: 0.07),
              Achievements(
                  achievement: "Experience", rank: "20 xp", factor: 0.04),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          MyAppbar(),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 ? _home: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 ? [Divider(thickness: 2,color: getPrimary(context))]: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==2 || currPage==0? _acheivement: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 ? [Divider(thickness: 2,color: getPrimary(context))]: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==1 || currPage==0? _performance: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 || currPage==1? [Divider(thickness: 2,color: getPrimary(context),height: 30,)]: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==1 || currPage==0? _activities: []),
          ),
          SliverToBoxAdapter(
            child: currPage==1 || currPage==0? Container(
              height: deviceWidth * 0.95,
              padding: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ActivityCard(
                      asset: "assets/trading.jpg",
                      name: "Live Trading Championship"),
                  ActivityCard(
                      asset: "assets/treasure.jpg", name: "Treasure Hunt"),
                  currPage==0? GestureDetector(
                    onTap: () {
                      setState(() {
                        currPage = 1;
                      });
                    },
                    child: Center(
                        child: SeeMore(
                      color: getPrimary(context),
                      text: "see more",
                    )),
                  ): Container()
                ],
              ),
            ) : Container(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 || currPage==1? [Divider(thickness: 2,color: getPrimary(context),height: 30,)]: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==1 || currPage==0? _discussion: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==0 ? [Divider(thickness: 2,color: getPrimary(context),height: 30,)]: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==3 || currPage==0? _members: []),
          ),
          SliverList(
            delegate: SliverChildListDelegate(currPage==4 ? _profile: []),
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
