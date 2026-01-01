import 'package:get/get.dart';

import '../controllers/set_location_screen_controller.dart';

class SetLocationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetLocationScreenController>(
      () => SetLocationScreenController(),
    );
  }
}
