import 'package:get/get.dart';

import '../controllers/data_and_privacy_controller.dart';

class DataAndPrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataAndPrivacyController>(
      () => DataAndPrivacyController(),
    );
  }
}
