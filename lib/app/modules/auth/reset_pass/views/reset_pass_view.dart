import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/reset_pass_controller.dart';

class ResetPassView extends GetView<ResetPassController> {
  const ResetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                const AppAppbar(),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.h),
                      Text(
                        'Set Password',
                        style: CustomTextStyles.t16(
                          weight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 7.h),
                      Obx(
                        () => TextFormField(
                          controller: controller.passwordController,
                          obscureText: controller.passwordVisible.value,
                          decoration: InputDecoration(
                            hintText: 'Type New Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                color: Colors.black54,
                                controller.passwordVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: controller.togglePasswordVisibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        'Confirm Password',
                        style: CustomTextStyles.t16(
                          weight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 7.h),
                      Obx(
                        () => TextFormField(
                          controller: controller.confirmPasswordController,
                          obscureText: controller.confirmPasswordVisible.value,
                          decoration: InputDecoration(
                            hintText: 'Confirm New Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                color: Colors.black54,
                                controller.confirmPasswordVisible.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed:
                                  controller.toggleConfirmPasswordVisibility,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Obx(
                        () => SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: controller.isLoading.value
                                ? null
                                : controller.savePassword,
                            child: controller.isLoading.value
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Save Password',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.rememberMe.value,
                              onChanged: controller.toggleRememberMe,
                            ),
                          ),
                          Text(
                            'I Agree with Privacy and Policy',
                            style: CustomTextStyles.t14(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
