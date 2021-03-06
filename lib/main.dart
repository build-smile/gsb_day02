import 'package:flutter/material.dart';
import 'package:gsb_day2/pages/editInfo.dart';
import 'package:gsb_day2/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/edit_info': (context) => EditInfoScreen()},
      home: HomeScreen(),
    );
  }
}
