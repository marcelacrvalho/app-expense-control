import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: Colors.deepPurple,
  primaryColor: Colors.purpleAccent,
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  dividerColor: Colors.transparent,

  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 12.0,
    ),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
  ),
);
