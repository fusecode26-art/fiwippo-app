import 'package:get/get.dart';

import '../controllers/language_and_currency_controller.dart';

class LanguageAndCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageAndCurrencyController>(
      () => LanguageAndCurrencyController(),
    );
  }
}
