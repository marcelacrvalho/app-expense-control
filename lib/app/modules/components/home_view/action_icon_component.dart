import 'package:flutter/material.dart';

import '../../../themes/themes.dart';
import '../../controllers/controllers.dart';
import '../../widgets/widgets.dart';

class CustomActionIconWidget extends StatelessWidget {
  const CustomActionIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.add),
        color: appThemeData.scaffoldBackgroundColor,
        iconSize: 30.0,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                color: appThemeData.appBarTheme.backgroundColor,
                height: 400.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CustomTextFieldWidget(
                        controller: TransactionController.to.titleController,
                        hintText: 'Nome',
                      ),
                      const Divider(),
                      CustomTextFieldWidget(
                        controller: TransactionController.to.valueController,
                        hintText: 'Valor',
                        onDone: TransactionController.to.newTransaction,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
