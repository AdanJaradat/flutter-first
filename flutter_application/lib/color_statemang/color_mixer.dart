import 'package:flutter/material.dart';
import 'package:flutter_application/color_statemang/color_circle.dart';
import 'package:flutter_application/color_statemang/color_value.dart';

class ColorMixer extends StatefulWidget {
  const ColorMixer({super.key});

  @override
  State<ColorMixer> createState() => _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer> {
  int _red = 0;
  int _green = 0;
  int _blue = 0;
  void _setColor(int value, String proprty) {
    setState(() {
      if (proprty == 'Red') {
        _red = value;
      } else if (proprty == 'Green') {
        _green = value;
      } else if (proprty == 'Blue') {
        _blue = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              ColorCircle(
                  color: Color.fromRGBO(_red, _green, _blue, 1), radius: 100),
              SizedBox(height: 15),
              ColorValueChange(
                  proprty: 'Red', value: _red, onChanged: _setColor),
              SizedBox(height: 15),
              ColorValueChange(
                  proprty: 'Green', value: _green, onChanged: _setColor),
              SizedBox(height: 15),
              ColorValueChange(
                  proprty: 'Blue', value: _blue, onChanged: _setColor),
            ],
          ),
        ),
      ),
    );
  }
}
