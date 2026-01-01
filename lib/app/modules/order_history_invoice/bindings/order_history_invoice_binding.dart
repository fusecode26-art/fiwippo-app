import 'package:get/get.dart';

import '../controllers/order_history_invoice_controller.dart';

class OrderHistoryInvoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryInvoiceController>(
      () => OrderHistoryInvoiceController(),
    );
  }
}
