import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/widgets/app_appbar.dart';
import 'package:fiwippo_ecommerce_app/core/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/set_location_screen_controller.dart';

class SetLocationScreenView extends GetView<SetLocationScreenController> {
  const SetLocationScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppAppbar(),
              SizedBox(height: 30.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Select Your Location',
                    style: CustomTextStyles.t24(weight: FontWeight.w600),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Allow AKRAVITA to access your location for personalized event suggestions',
                    style: CustomTextStyles.t16(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  // SizedBox(height: 15.h),
                ],
              ),

              SizedBox(height: 20.h),

              Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.grey[600]),
                      SizedBox(width: 10.w),
                      Text(
                        'Use My Current Location',
                        style: CustomTextStyles.t18(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
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

              Container(
                height: 40.h,
                width: 220.w,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select your city',
                        style: CustomTextStyles.t18(color: Colors.grey[700]),
                      ),
                      SizedBox(width: 10.w),
                      Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 350),

              Text('', style: CustomTextStyles.t14(color: Colors.grey)),

              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.VERIFICATION_SUCCESS);
                },
                child: Text('Set Location'),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
