import 'package:flutter/material.dart';

class CustomChartWidget extends StatelessWidget {
  const CustomChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}