import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socailmedia/components/space.dart';
import 'package:socailmedia/pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite),
            ),
            Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                },
              ),
            ),
            Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.person),
                title: const Text("P R O F I L E"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profile_page');
                },
              ),
            ),
            Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.group),
                title: const Text("U S E R S"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/users_page');
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 25),
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text("L O G O U T"),
            onTap: () {
              // this is alread HomePage
              Navigator.pop(context);
              logout();
            },
          ),
        ),
      ]),
    );
  }
}
