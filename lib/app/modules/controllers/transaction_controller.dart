import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../datas/datas.dart';
import '../models/models.dart';

class TransactionController extends GetxController implements TransactionData {
  static TransactionController get to => Get.find<TransactionController>();

  RxList<Transaction> transactions = <Transaction>[].obs;
  final valueController = TextEditingController();
  final titleController = TextEditingController();

  get valueToDouble => double.tryParse(valueController.text) ?? 0.0;

  @override
  void newTransaction() {
    transactions.add(
      Transaction(
        id: Random().nextInt(900).toString(),
        date: DateTime.now(),
        title: titleController.text,
        value: valueToDouble,
      ),
    );
  }

  @override
  void removeTransaction() {
    // TODO: implement removeTransaction
  }
}
