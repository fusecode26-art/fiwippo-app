import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/o_t_p_verify_controller.dart';

class OTPVerifyView extends GetView<OTPVerifyController> {
  const OTPVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    controller.email = args['email'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              const AppAppbar(),
              SizedBox(height: 40.h),
              Text(
                'Verify Your Email',
                style: CustomTextStyles.t26(weight: FontWeight.w600),
              ),
              SizedBox(height: 8.h),
              Text(
                'Enter the 6-digit code sent to your email',
                textAlign: TextAlign.center,
                style: CustomTextStyles.t16(color: Colors.black54),
              ),
              SizedBox(height: 30.h),

              // OTP Input
              Pinput(
                length: 6,
                controller: controller.otpController,
                keyboardType: TextInputType.number,
                defaultPinTheme: PinTheme(
                  width: 48.w,
                  height: 56.h,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 48.w,
                  height: 56.h,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                errorPinTheme: PinTheme(
                  width: 48.w,
                  height: 56.h,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.red, width: 1.5),
                  ),
                ),
                onChanged: (value) {
                  controller.otp.value = value;
                  controller.isOtpValid.value = true;
                },
              ),

              SizedBox(height: 25.h),

              // Resend OTP
              Obx(
                    () => RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Didn't receive the OTP?\n",
                    style: CustomTextStyles.t16(color: Colors.black54),
                    children: [
                      controller.canResend.value
                          ? TextSpan(
                        text: "Re-send code",
                        style: CustomTextStyles.t16(
                          color: const Color(0xff8B6914),
                          weight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = controller.resendOtp,
                      )
                          : TextSpan(
                        text:
                        "Re-send code in 0:${controller.secondsLeft.value.toString().padLeft(2, '0')}",
                        style: CustomTextStyles.t16(
                          weight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40.h),

              // Verify button
              Obx(
                    () => SizedBox(
                  width: double.infinity,
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: controller.isLoading.value
                        ? null
                        : controller.verifyOtp,
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Verify'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
