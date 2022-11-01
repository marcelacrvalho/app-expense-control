import 'package:get/get.dart';

import '../controllers/controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionController());
  }
}
