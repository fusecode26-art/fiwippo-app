import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    Future.delayed(const Duration(seconds: 2)).then((value){
      Get.offAndToNamed(Routes.ONBOARDING);
    });
  }

}
