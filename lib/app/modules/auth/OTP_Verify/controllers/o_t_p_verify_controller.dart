import 'dart:async';
import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/network_service/network_service.dart';
import 'package:fiwippo_ecommerce_app/core/urls/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerifyController extends GetxController {
  var isLoading = false.obs;
  var otp = ''.obs;
  var isOtpValid = true.obs;

  var canResend = false.obs;
  var secondsLeft = 30.obs;
  Timer? _timer;

  TextEditingController otpController = TextEditingController();
  String? email;
  bool isFromForgotPassword = false;

  final _networkCaller = NetworkCaller();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    email = args['email'];
    isFromForgotPassword = args['isFromForgotPassword'] ?? false;

    startResendTimer();
  }

  @override
  void onClose() {
    _timer?.cancel();
    otpController.dispose();
    super.onClose();
  }

  Future<void> verifyOtp() async {
    if (otp.value.length != 6) {
      isOtpValid.value = false;
      Get.snackbar('Error', 'Please enter a valid 6-digit OTP');
      return;
    }

    isLoading.value = true;

    try {
      final response = await _networkCaller.postRequest(
        url: isFromForgotPassword ? AppUrls.forgotVerifyOtp : AppUrls.verifyOtp,
        body: {'email': email, 'otp': otp.value},
      );

      if (response.isSuccess) {

        // OTP successful, navigate
        if (isFromForgotPassword) {
          Get.offNamed(Routes.RESET_PASS, arguments: {'email': email});
        } else {
          Get.offNamed(Routes.SET_LOCATION_SCREEN);
        }
        clearOtp();
      } else {
        Get.snackbar(
          'Error',
          response.responseData?['message'] ?? 'OTP verification failed',
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'OTP verification failed');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> resendOtp() async {
    if (!canResend.value) return;

    try {
      canResend.value = false;
      secondsLeft.value = 30;
      startResendTimer();

      final response = await _networkCaller.postRequest(
        url: AppUrls.resendOtp,
        body: {
          'email': email,
          'type': isFromForgotPassword ? 'forgot_password' : 'signup',
        },
      );

      if (response.isSuccess) {
        Get.snackbar('Success', 'OTP resent successfully');
        clearOtp();
      } else {
        Get.snackbar(
          'Error',
          response.responseData?['message'] ?? 'Failed to resend OTP',
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to resend OTP');
    }
  }

  void startResendTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft.value == 0) {
        canResend.value = true;
        timer.cancel();
      } else {
        secondsLeft.value--;
      }
    });
  }

  void clearOtp() {
    otpController.clear();
    otp.value = '';
    isOtpValid.value = true;
  }
}
