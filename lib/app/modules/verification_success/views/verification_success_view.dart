import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/app_images.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/verification_success_controller.dart';

class VerificationSuccessView extends GetView<VerificationSuccessController> {
  const VerificationSuccessView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppAppbar(),
            SizedBox(height: 100.h),
            Image.asset(
              AppImages.success,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.h),
            Text(
              'Account Created!',
              style: CustomTextStyles.t30(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Text(
                'Your account is ready. Start discovering amazing events near you.',
                textAlign: TextAlign.center,
                style: CustomTextStyles.t18(
                  weight: FontWeight.w500,
                  color: const Color(0xFF6E6E6E),
                ),
              ),
            ),
            SizedBox(height: 150.h),

            ElevatedButton(onPressed: () {}, child: Text('Start Exploring')),
          ],
        ),
      ),
    );
  }
}
