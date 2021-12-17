import 'package:flutter/material.dart';
import 'package:top_level_navigation_1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Top Level Navigation',
      home: Home(),
    );
  }
}
