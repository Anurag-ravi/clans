// ignore_for_file: prefer_const_constructors

import 'package:clans/utilities/colors.dart';
import 'package:clans/utilities/theme_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({ Key? key }) : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context,ThemeModel themenotifier,child){
        
      return SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 120.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Clans',
                  style: TextStyle(fontSize: 40,
                  color: themenotifier.isDark? getPrimary(context) : Colors.white),
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 0),
                background: Opacity(
                  opacity: 0.6,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/appdp.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                ),
              ),
              elevation: 10,
              actions: [
              IconButton(
                onPressed: (){
                  themenotifier.isDark ? themenotifier.isDark = false : themenotifier.isDark = true;
                }, 
                icon: Icon(
                  themenotifier.isDark ? Icons.wb_sunny : Icons.nightlight_round,
                  color: themenotifier.isDark ? Colors.yellow : Colors.white,
                )),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: Text("Challenge"),
                      value: "Challenge",
                    ),
                    PopupMenuItem(
                      child: Text("Join Group"),
                      value: "Join Group",
                    ),
                    PopupMenuItem(
                      child: Text("Invite"),
                      value: "Invite",
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                      value: "Logout",
                    ),
                  ];
                },
                onSelected: (value) {
                },
                elevation: 5.0,
              ),
            ],
            );
    
  }
    );
}
}