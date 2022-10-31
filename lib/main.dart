import 'package:flutter/material.dart';

import 'app/themes/themes.dart';
import 'views/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meus gastos',
      theme: appThemeData,
      home: const HomeView(),
    ),
  );
}
