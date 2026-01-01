import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "title": "Discover Events, Courses & Experiences",
      "desc":
          "Find exciting events, enroll in courses, and book unique experiences—all in one smart platform.",
    },
    {
      "image": "assets/images/onboarding2.png",
      "title": "Shop, Learn & Book With Ease",
      "desc":
          "Buy products, join classes, and reserve tickets in seconds. Smooth checkout, secure payments, zero hassle.",
    },
    {
      "image": "assets/images/onboarding3.png",
      "title": "Smarter Recommendations With AI",
      "desc":
          "Get personalized suggestions, track your tickets & orders, and enjoy a seamless journey—powered by intelligent AI.",
    },
  ];

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  nextPage() {
    if (currentIndex.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // last page action
      // Get.offAllNamed(Routes.HOME);
    }
  }
}
