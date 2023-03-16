import 'package:flutter/material.dart';

const Color white = Color(0xFFFFF3E0);
const Color grey = Color(0xFFBDBDBD);
const Color orange = Color(0xEAE0611A);
const Color darkYellow = Color(0xFFFFB300);
const Color lightYellow = Color(0xFFFFD35D);
const Color green = Color(0xFF69BE54);

class TBTheme {
  final globalTheme = ThemeData(
    backgroundColor: white,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 40,
        color: white,
      ),
      bodyText2: TextStyle(
        fontSize: 40,
        color: white,
        fontWeight: FontWeight.w300,
      ),
      caption: TextStyle(
        fontSize: 14,
        color: white,
      ),
      button: TextStyle(
        color: white,
        fontWeight: FontWeight.bold,
        fontSize: 27,
      ),
    ),
  );
}
