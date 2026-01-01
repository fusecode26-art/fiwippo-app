import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/auth_select_controller.dart';

class AuthSelectView extends GetView<AuthSelectController> {
  const AuthSelectView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200.h),

              Image.asset(
                AppImages.appLogo,
                width: Get.width * 0.5,
                fit: BoxFit.contain,
              ),

              Text(
                'Extraordinary events and experiences await you. Join AKRAVITA!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.SIGN_UP);
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffE9E9E9),
                ),
                onPressed: () {
                  Get.toNamed(Routes.SIGN_IN);
                },
                child: Text('Sign In', style: TextStyle(color: Colors.black87)),
              ),

              SizedBox(height: 20.h),

              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
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
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
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
            ],
          ),
        ),
      ),
    );
  }
}
