import 'package:flutter/material.dart';

import '../../../themes/themes.dart';

class CustomActionIcon extends StatelessWidget {
  const CustomActionIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      color: appThemeData.scaffoldBackgroundColor,
      iconSize: 30.0, 
      onPressed: () {  },
    );
  }
}
