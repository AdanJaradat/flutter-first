// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorValueChange extends StatefulWidget {
  ColorValueChange({
    Key? key,
    required this.proprty,
    required this.value,
    required this.onChanged,
  }) : super(key: key);
  final String proprty;
  final int value;
  final Function(int, String) onChanged;
  @override
  State<ColorValueChange> createState() => _ColorValueChangeState();
}

class _ColorValueChangeState extends State<ColorValueChange> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.proprty),
        Slider(
          min: 0,
          max: 255,
          value: widget.value.toDouble(),
          onChanged: (value) {
            widget.onChanged(value.round(), widget.proprty);
            setState(() {});
          },
          label: widget.proprty,
        ),
      ],
    );
  }
}
