import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
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
      color: Colors.black,
      fontSize: 12.0,
    ),
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
    titleSmall: TextStyle(
      color: Colors.purpleAccent,
      fontSize: 18.0,
    ),
  ),
);
