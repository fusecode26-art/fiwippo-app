import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                AppAppbar(),

                SizedBox(height: 20.h),

                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 20.h,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  'Enter your registered email. We’ll send you an OTP to reset your password.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Email',
                      style: CustomTextStyles.t16(
                        weight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: 'Type your Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(height: 20.h),

                    Obx(
                          () => SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: controller.isLoading.value
                              ? null
                              : controller.submit,
                          child: controller.isLoading.value
                              ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                              : const Text('Send code'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
