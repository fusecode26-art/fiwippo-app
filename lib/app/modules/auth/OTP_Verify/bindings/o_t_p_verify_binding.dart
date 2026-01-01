import 'package:get/get.dart';

import '../controllers/o_t_p_verify_controller.dart';

class OTPVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPVerifyController>(
      () => OTPVerifyController(),
    );
  }
}
