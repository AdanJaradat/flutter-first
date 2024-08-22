import 'package:flutter/material.dart';
import 'package:flutter_application/color_statemang/color_mixer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorMixer(),
    );
  }
}
