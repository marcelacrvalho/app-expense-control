import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';
import '../controllers/controllers.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TransactionController());
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CustomActionIconWidget(),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => TransactionController.to.transactions.isNotEmpty
              ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  itemCount: TransactionController.to.transactions.length,
                  itemBuilder: (context, index) {
                    return CustomExpenseCardWidget(
                      title: TransactionController.to.transactions[index].title,
                      value: TransactionController.to.transactions[index].value,
                      date: TransactionController.to.transactions[index].date,
                    );
                  },
                )
              : const Text('Nenhum gasto ainda'),
        ),
      ),
    );
  }
}
