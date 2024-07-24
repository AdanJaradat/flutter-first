import 'package:flutter/material.dart';
import 'package:flutter_application/navi/page1.dart';
import 'package:flutter_application/navi/page2.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
      initialRoute: '/page1',
    );
  }
}
