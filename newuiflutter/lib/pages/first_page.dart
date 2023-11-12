// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newuiflutter/pages/home_page.dart';
import 'package:newuiflutter/pages/profile_page.dart';
import 'package:newuiflutter/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
// this keeps the track of the first page
int _selectedIndex = 0;

//method to find the current page
void _navigateBottomBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st page"),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To secondpage"),
      //     onPressed: (() {
      //       //navigate to second page
      //       // Navigator.push(context,
      //       //  MaterialPageRoute(
      //       //   builder: (context) => SecondPage(),
      //       //   ));
      //       Navigator.pushNamed(context,'/second_page');
      //     }),
      // )
      // ),
      //
      // drawer: Drawer(
      //   backgroundColor: Colors.deepOrange,
      //   child: Column(children: [
      //     DrawerHeader(
      //       child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       ),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.home),
      //       title: Text("H O M E"),
      //       onTap: (){
      //         //go to the home page
      //         Navigator.pop(context);
      //         Navigator.pushNamed(context, '/homepage');
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.settings),
      //       title: Text("S E T T I N G S"),
      //       onTap: (){
      //         //go to the home psge
      //         Navigator.pop(context);
      //         Navigator.pushNamed(context, '/settingspage');
      //       },
      //     ),
      //   ]),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap:_navigateBottomBar,
        items: [
        //home

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        //pro
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Profile',
        ),
        //settings
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
      ]),
    );
  }
}
