// ignore_for_file: prefer_const_constructors

import 'package:clans/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clans',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        colorScheme: ColorScheme.light(
          primary: Colors.blueGrey,
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
          primary: Colors.blueGrey,
          secondary: Colors.white,
          background: Colors.black,
          error: Colors.red,
        ),
        dividerColor: Colors.black12,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      themeMode: ThemeMode.light, 
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}


