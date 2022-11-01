import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../components.dart';

class CustomListExpenseCardWidget extends StatelessWidget {
  const CustomListExpenseCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: TransactionController.to.transactions.length,
        itemBuilder: (context, index) {
          return CustomExpenseCardWidget(
            title: TransactionController.to.transactions[index].title,
            value: TransactionController.to.transactions[index].value,
            date: TransactionController.to.transactions[index].date,
          );
        },
      ),
    );
  }
}
