import 'package:get/get.dart';

import '../controllers/auth_select_controller.dart';

class AuthSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthSelectController>(
      () => AuthSelectController(),
    );
  }
}
