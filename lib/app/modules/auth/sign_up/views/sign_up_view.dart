import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/app_images.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
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
                AppAppbar(),

                SizedBox(height: 20.h),

                Text(
                  'Create Individual Account',
                  style: TextStyle(
                    fontSize: 20.h,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  'Find and book the best events, courses, and more. Join AKRAVITA now.',
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Username',
                      style: CustomTextStyles.t16(
                        weight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    TextFormField(
                      controller: controller.nameController,
                      decoration: InputDecoration(
                        hintText: 'Type your Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'Email',
                      style: CustomTextStyles.t16(
                        weight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 7.h),
                    TextFormField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        hintText: 'Type your last name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12.h),

                    Obx(
                          () => TextFormField(
                        controller: controller.passwordController,
                        obscureText: !controller.passwordVisible.value,
                        decoration: InputDecoration(
                          hintText: 'your password',
                          errorText: controller.passwordError.value,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.passwordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: controller.togglePasswordVisibility,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 14.h),

                    Text(
                      'confirm Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12.h),

                    Obx(
                          () => TextFormField(
                        controller: controller.confirmPasswordController,
                        obscureText: !controller.confirmPasswordVisible.value,
                        decoration: InputDecoration(
                          hintText: 'Confirm your password',
                          errorText: controller.confirmPasswordError.value,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.confirmPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed:
                            controller.toggleConfirmPasswordVisibility,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.rememberMe.value,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: const VisualDensity(
                                horizontal: -4,
                                vertical: -4,
                              ),
                              onChanged: (value) {
                                controller.toggleRememberMe(value!);
                              },
                            ),
                          ),

                          const SizedBox(width: 6),

                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black87,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Terms of Service and Privacy Policy',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed(Routes.SIGN_UP);
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.h),
                    Obx(
                          () => ElevatedButton(
                        onPressed: controller.isLoading.value
                            ? null
                            : controller.signupWithEmail,
                        child: controller.isLoading.value
                            ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                            : Text(
                          'Continue',
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE9E9E9),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.google,
                            height: 20.h,
                            width: 20.w,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Continue with Google',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE9E9E9),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.apple,
                            height: 20.h,
                            width: 20.w,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Continue with Apple',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'If you don’t have any account please?  ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black87,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.purple,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(Routes.SIGN_IN);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
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
