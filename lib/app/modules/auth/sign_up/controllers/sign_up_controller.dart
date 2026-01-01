import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/network_service/network_service.dart';
import 'package:fiwippo_ecommerce_app/core/shared_prefs_helper/shared_prefs_helper.dart';
import 'package:fiwippo_ecommerce_app/core/urls/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final isLoading = false.obs;

  /// Separate visibility for password and confirm password
  final passwordVisible = false.obs;
  final confirmPasswordVisible = false.obs;

  final rememberMe = false.obs;

  /// Controllers for TextFields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final _networkCaller = NetworkCaller();

  /// Error messages
  final emailError = RxnString();
  final passwordError = RxnString();
  final confirmPasswordError = RxnString();
  final nameError = RxnString();

  /// Toggle password visibility
  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  /// Toggle confirm password visibility
  void toggleConfirmPasswordVisibility() {
    confirmPasswordVisible.value = !confirmPasswordVisible.value;
  }

  /// Toggle terms & conditions checkbox
  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }


  /// Validation function
  bool validate() {
    bool valid = true;

    // Name validation
    if (nameController.text.isEmpty) {
      nameError.value = "Name cannot be empty";
      valid = false;
    } else if (nameController.text.length < 2) {
      nameError.value = "Enter a valid name";
      valid = false;
    } else {
      nameError.value = null;
    }

    // Email validation
    if (emailController.text.isEmpty) {
      emailError.value = "Email cannot be empty";
      valid = false;
    } else if (!GetUtils.isEmail(emailController.text)) {
      emailError.value = "Enter a valid email";
      valid = false;
    } else {
      emailError.value = null;
    }

    // Password validation
    if (passwordController.text.isEmpty) {
      passwordError.value = "Password cannot be empty";
      valid = false;
    } else if (passwordController.text.length < 6) {
      passwordError.value = "Password must be at least 6 characters";
      valid = false;
    } else {
      passwordError.value = null;
    }

    // Confirm Password validation
    if (confirmPasswordController.text.isEmpty) {
      confirmPasswordError.value = "Confirm your password";
      valid = false;
    } else if (confirmPasswordController.text != passwordController.text) {
      confirmPasswordError.value = "Passwords do not match";
      valid = false;
    } else {
      confirmPasswordError.value = null;
    }

    // Terms checkbox validation
    if (!rememberMe.value) {
      Get.snackbar(
        "Terms & Privacy",
        "Please accept the terms and privacy policy",
        snackPosition: SnackPosition.BOTTOM,
      );
      valid = false;
    }

    return valid;
  }

  /// Signup with email
  Future<void> signupWithEmail() async {
    if (!validate()) return;
    isLoading.value = true;
    try {
      final response = await _networkCaller.postRequest(
        url: AppUrls.signUp,
        body: {
          "username": nameController.text,
          "email": emailController.text,
          "password": passwordController.text,
        },
      );
      if (response.isSuccess) {
        isLoading.value = false;

        Get.toNamed(Routes.OTP_VERIFY,arguments: {
          "email": emailController.text,
          'isFromForgotPassword': false,
        });

        clearFields();

      } else {
        isLoading.value = false;
      }
    } catch (e) {
      isLoading.value = false;
      print("Signup error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  /// Google signup
  void signupWithGoogle() {
    print("Google signup clicked");
  }

  void clearFields() {
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  /// Navigate to login
  void goToOTP() {
    Get.toNamed(Routes.OTP_VERIFY);
  }

  /// Back button pressed
  void backButtonPressed() {
    Get.back();
  }
}
