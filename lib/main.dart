import 'package:flutter/material.dart';
// import 'package:vazifa_2/pages/first_page.dart';
// import 'package:vazifa_2/pages/second_page.dart';
// import 'package:vazifa_2/pages/third_page.dart';
import 'package:vazifa_2/pages/home_screens.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ListScreen(),
      // home: ComputationScreen(),
      // home: ImageScreen(),
      home: HomeScreen(),
    );
  }
}
