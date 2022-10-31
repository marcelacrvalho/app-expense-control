import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class CustomExpenseCardWidget extends StatelessWidget {
  const CustomExpenseCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3.0,
        color: appThemeData.primaryColorDark.withOpacity(0.5),
      ),
    );
  }
}
