// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/products/1.jpg',
                    height: 240,
                  ),
                  SizedBox(height: 48),
                  // Title
                  Text(
                    'Just Do It',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 24),
                  // Subtitle
                  Text(
                    'Brand new sneakers and customers bikes make it premium qualified',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 48),
                  // Start Now Button
                  GestureDetector(
                    onTap:() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context)=> HomePage(),
                    )),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(25),
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
