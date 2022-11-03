import 'package:flutter/material.dart';

import 'app/modules/views/home.dart';
import 'app/themes/themes.dart';

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
