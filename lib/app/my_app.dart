import 'package:fiwippo_ecommerce_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:fiwippo_ecommerce_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          theme: AppTheme.lightTheme,
          title: "Application",
          debugShowCheckedModeBanner: false,
          initialBinding: SplashBinding(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
