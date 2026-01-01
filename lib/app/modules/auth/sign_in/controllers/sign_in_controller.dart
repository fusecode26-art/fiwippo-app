import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/network_service/network_service.dart';
import 'package:fiwippo_ecommerce_app/core/urls/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final isLoading = false.obs;
  final passwordVisible = false.obs;
  final rememberMe = false.obs;

  /// Controllers for TextFields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _networkCaller = NetworkCaller();

  /// Error messages
  final emailError = RxnString();
  final passwordError = RxnString();

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  /// Validation function
  bool validate() {
    bool valid = true;

    if (emailController.text.isEmpty) {
      emailError.value = "Email cannot be empty";
      valid = false;
    } else if (!GetUtils.isEmail(emailController.text)) {
      emailError.value = "Enter a valid email";
      valid = false;
    } else {
      emailError.value = null;
    }

    if (passwordController.text.isEmpty) {
      passwordError.value = "Password cannot be empty";
      valid = false;
    } else if (passwordController.text.length < 6) {
      passwordError.value = "Password must be at least 6 characters";
      valid = false;
    } else {
      passwordError.value = null;
    }
    return valid;
  }

  Future<void> loginWithEmail() async {
    if (!validate()) return;

    isLoading.value = true;
    try {
      final response = await _networkCaller.postRequest(
        url: AppUrls.signIn,
        body: {
          "email": emailController.text,
          "password": passwordController.text,
        },
      );
      if (response.isSuccess) {
        isLoading.value = false;

        Get.toNamed(Routes.HOME,);
        clearFields();
      }
    } catch (e) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  void loginWithGoogle() {
    print("Google login clicked");
  }

  void clearFields() {
    emailController.clear();
    passwordController.clear();
  }

  void forgetPassword() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    emailController.clear();
    passwordController.clear();
    super.onClose();
  }

  @override
  void onInit() {
    emailController.clear();
    passwordController.clear();
    super.onInit();
  }
}
