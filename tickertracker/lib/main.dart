import 'package:flutter/material.dart';
import 'package:tickertracker/Screens/home.dart';
import 'package:tickertracker/Screens/statistics.dart';
import 'package:tickertracker/pages/login_page.dart';
import 'package:tickertracker/pages/register_page.dart';
import 'package:tickertracker/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:tickertracker/data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom()
    );
  }
}
