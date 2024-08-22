// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  ColorCircle({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);
  final Color color;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
