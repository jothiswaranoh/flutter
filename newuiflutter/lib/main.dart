// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newuiflutter/pages/first_page.dart';
import 'package:newuiflutter/pages/home_page.dart';
import 'package:newuiflutter/pages/settings_page.dart';
import 'package:newuiflutter/pages/profile_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //variables -stores any thing in the variables
  // List names = ["jothis", "arun", "vasasth"];
  void userTapped() {
    print("userTapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/first_page': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),

        // '/second_page':(context) => SecondPage(),
      },
      );
  }
}
