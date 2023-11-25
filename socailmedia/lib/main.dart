import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socailmedia/auth/auth.dart';
import 'package:socailmedia/auth/login_or_register.dart';
import 'package:socailmedia/firebase_options.dart';
import 'package:socailmedia/pages/home_page.dart';
import 'package:socailmedia/pages/login_page.dart';
import 'package:socailmedia/pages/profile_page.dart';
import 'package:socailmedia/pages/register_page.dart';
import 'package:socailmedia/pages/users_page.dart';
import 'package:socailmedia/theme/dark_mode.dart';
import 'package:socailmedia/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      theme: lightMode,
      darkTheme: darktMode,
      routes: {
        '/login_register_page':(context) => const LoginOrRegister(),
        '/home_page':(context) =>  HomePage(),
        '/profile_page':(context) =>  ProfilePage(),
        '/users_page':(context) =>  UsersPage(),
      },
    );
  }
  
}
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
