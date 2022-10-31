import 'package:expense_control/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

import '../app/components/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemeData.scaffoldBackgroundColor,
        actions: [
          Icon(
            Icons.add,
            color: appThemeData.primaryColor,
          ),
        ],
        elevation: 0.0,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           CustomTextTitleWidget(),
            const Divider(),
            CustomExpenseCardWidget(
              title: 'Tenis Nike',
              value: 100.0,
              date: DateTime.now(),
            ),
          ],
        ),
      ),
    );
  }
}
