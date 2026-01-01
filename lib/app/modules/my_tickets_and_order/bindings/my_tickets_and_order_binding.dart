import 'package:get/get.dart';

import '../controllers/my_tickets_and_order_controller.dart';

class MyTicketsAndOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyTicketsAndOrderController>(
      () => MyTicketsAndOrderController(),
    );
  }
}
