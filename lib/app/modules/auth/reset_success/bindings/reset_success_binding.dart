import 'package:get/get.dart';

import '../controllers/reset_success_controller.dart';

class ResetSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetSuccessController>(
      () => ResetSuccessController(),
    );
  }
}
