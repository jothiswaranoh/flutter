import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:ironman/constants.dart';
import 'dart:ui';
import 'package:ironman/model/rive_model.dart';
import 'package:ironman/model/menu.dart';
import 'package:ironman/model/course.dart';
import 'package:ironman/home/componets/animated_btn.dart';
import '../model/menu.dart';
import 'components/btm_nav_item.dart';
import 'components/menu_btn.dart';
import 'components/side_bar.dart';
import 'package:ironman/utils/rive_utils.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late RiveAnimationController _btnAnimationController;
  bool isShowSignInDialog = false;
  Menu selectedBottonNav = bottomNavItems.first;
  Menu selectedSideMenu = sidebarMenus.first;

  @override
  void initState() {
    super.initState();
    // Initialize your RiveAnimationController here
    _btnAnimationController = SimpleAnimation('YourAnimationName');
  }

  void updateSelectedBtmNav(Menu menu) {
    if (selectedBottonNav != menu) {
      setState(() {
        selectedBottonNav = menu;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor_black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu), // Menu icon
                  color: Colors.blueAccent,
                  onPressed: () {
                    // Add functionality for the menu icon here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search), // Search icon
                  color: Colors.blueAccent,
                  onPressed: () {
                    // Add functionality for the search icon here
                  },
                ),
              ],
            ),
          ),
        Container(
          
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white, // Background color for the middle container
          ),
          width: 300, // Adjust the width as needed
          height: 300, // Adjust the height as needed
          child: ClipRRect(
            
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              "assets/Backgrounds/ironman_context.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
          Container(
               height: 330,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey, // Example color for the slider box
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/Backgrounds/ironmanbg.jpeg'),
                        Text('Image 1'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/Backgrounds/ironmanbg.jpeg'),
                        Text('Image 2'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
            Image.asset('assets/Backgrounds/ironmanbg.jpeg'),
                        Text('Image 3'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
            Image.asset('assets/Backgrounds/ironmanbg.jpeg'),
                        Text('Image 4'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    bottomNavItems.length,
                    (index) {
                      Menu navBar = bottomNavItems[index];
                      return BtmNavItem(
                        navBar: navBar,
                        press: () {
                          RiveUtils.chnageSMIBoolState(navBar.rive.status!);
                          updateSelectedBtmNav(navBar);
                        },
                        riveOnInit: (artboard) {
                          navBar.rive.status = RiveUtils.getRiveInput(artboard, stateMachineName: navBar.rive.stateMachineName);
                        },
                        selectedNav: selectedBottonNav,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
