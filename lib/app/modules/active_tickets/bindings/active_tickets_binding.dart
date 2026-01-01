import 'package:get/get.dart';

import '../controllers/active_tickets_controller.dart';

class ActiveTicketsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActiveTicketsController>(
      () => ActiveTicketsController(),
    );
  }
}
