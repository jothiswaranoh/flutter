import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:ironman/constants.dart';
import 'package:ironman/welcome/welcome.dart';

import 'dart:ui';

import 'package:ironman/home/componets/animated_btn.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  late RiveAnimationController _btnAnimationController;
  bool isShowSignInDialog = false;

  @override
  void initState() {
    super.initState();
    // Initialize your RiveAnimationController here
    _btnAnimationController = SimpleAnimation('YourAnimationName');
  }

@override
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: backgroundColor_black,
    body: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: const SizedBox(),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            "assets/Backgrounds/ironmanbg.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            SizedBox(
              width: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "IRON MAN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(flex: 2),
            AnimatedBtn(
              btnAnimationController: _btnAnimationController,
              press: () {
                _btnAnimationController.isActive = true;
Future.delayed(
          const Duration(milliseconds: 800),
          () {
            setState(() {
              isShowSignInDialog = true;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Welcome(); // Replace 'Welcome()' with your desired page
                },
              ),
            );
          },
        );
              }
            ),
          ],
        ),
      ],
    ),
  );
}
}
