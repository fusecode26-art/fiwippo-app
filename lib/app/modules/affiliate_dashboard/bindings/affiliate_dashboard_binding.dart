import 'package:get/get.dart';

import '../controllers/affiliate_dashboard_controller.dart';

class AffiliateDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AffiliateDashboardController>(
      () => AffiliateDashboardController(),
    );
  }
}
