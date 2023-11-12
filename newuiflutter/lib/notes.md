import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // App bar at the top of the screen
        appBar: AppBar(
          title: Text('My App'), // Title in the app bar
          leading: IconButton( // Icon/Button at the start of the app bar
            icon: Icon(Icons.menu),
            onPressed: () {
              // Action when the menu icon is pressed
            },
          ),
          actions: <Widget>[ // Additional icons/buttons at the end of the app bar
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action when the search icon is pressed
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Action when the more options icon is pressed
              },
            ),
          ],
          backgroundColor: Colors.blue, // Background color of the app bar
          elevation: 4, // Elevation/shadow below the app bar
        ),
        body: Center(
          child: GestureDetector( // Detects user gestures like taps
            onTap: () {
              // Action when the container is tapped
              print("userTapped"); // Example action: printing to console
            },
            child: Container( // A visual rectangular element
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: Text("tap me")), // Text within the container
            ),
          ),
        ),
      ),
    );
  }
}

/// Notes on various Flutter components:

/// ListView:
/// - Displays a scrollable list of children.
/// - Types: ListView, ListView.builder, ListView.separated, ListView.custom
/// - Properties: scrollDirection, itemCount, itemBuilder

/// Expanded:
/// - Specifies how a child widget should expand to fill available space.
/// - Used within Column, Row, or Flex to control child space allocation.

/// Scaffold:
/// - Provides basic structure for material design applications.
/// - Contains app bars, body content, bottom navigation, and floating action buttons.

/// Widget:
/// - Building blocks for UI in Flutter.
/// - Structural (e.g., rows, columns) or presentational (e.g., text, images).
/// - Stateless or stateful.

/// Container:
/// - Creates a rectangular visual element.
/// - Allows customization of child widget's visual attributes (padding, margins, borders).

/// GestureDetector:
/// - Detects gestures made by the user (e.g., taps, drags, long presses).
/// - Makes any widget interactive.

/// MaterialApp:
/// - Sets up app and defines its look based on material design principles.
/// - Includes properties for theme, debug options, and routes.

drawer is user for side navigation bar
