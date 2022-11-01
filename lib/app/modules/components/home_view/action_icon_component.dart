import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class CustomActionIcon extends StatelessWidget {
  const CustomActionIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add,
      color: appThemeData.scaffoldBackgroundColor,
      size: 30.0,
    );
  }
}