import 'package:flutter/material.dart';

import '../../../themes/themes.dart';


class CustomTextTitleWidget extends StatelessWidget {
  const CustomTextTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'MEUS GASTOS',
      style: TextStyle(
        color: appThemeData.primaryColorDark,
        fontSize: appThemeData.textTheme.titleSmall!.fontSize,
      ),
    );
  }
}
