// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.fWeight = FontWeight.normal,
    this.size = 14,
    this.height = 1.5,
  });

  final String text;
  final double size, height;
  final FontWeight fWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fWeight,
        color: color,
        decoration: TextDecoration.none,
        height: height,
      ),
    );
  }
}
