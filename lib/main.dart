// ignore_for_file: prefer_const_constructors

import 'package:clans/pages/main_page.dart';
import 'package:clans/utilities/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => ThemeModel(),
      child: Consumer(
        builder: (context,ThemeModel themenotifier,child){
          return MaterialApp(
          title: 'Clans',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.grey,
            primaryColor: Colors.black,
            colorScheme: ColorScheme.light(
              primary: Color(0xff7ED4CB),
              secondary: Colors.black,
              background: Colors.white,
              error: Colors.red,
            ),
            dividerColor: Colors.black12,
            iconTheme: IconThemeData(color: Colors.black)
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.grey,
            primaryColor: Colors.white,
            colorScheme: ColorScheme.dark(
              primary: Color(0xff7ED4CB),
              secondary: Colors.white,
              background: Colors.black,
              error: Colors.red,
            ),
            dividerColor: Colors.black12,
            iconTheme: IconThemeData(color: Colors.white)
          ),
          themeMode: themenotifier.isDark ? ThemeMode.dark : ThemeMode.light, 
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        );
        },
      ),
    );
  }
}


