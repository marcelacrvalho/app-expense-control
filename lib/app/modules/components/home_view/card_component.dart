import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../themes/themes.dart';


class CustomExpenseCardWidget extends StatelessWidget {
  final String title;
  final double value;
  final DateTime date;

  const CustomExpenseCardWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.mediaQuery.size.height * 0.1,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(5.0, 6.0),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: appThemeData.textTheme.titleSmall!.color,
                fontSize: appThemeData.textTheme.titleSmall!.fontSize),
          ),
          Divider(
            color: appThemeData.primaryColorLight.withOpacity(0.5),
            thickness: 0.5,
            indent: 5.0,
            endIndent: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('d-M-y').format(date),
                style: TextStyle(
                  color: appThemeData.textTheme.bodyMedium!.color,
                  fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
                ),
              ),
              Container(
                color: Colors.deepOrange,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'R\$ ${value.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: appThemeData.textTheme.bodyMedium!.color,
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
