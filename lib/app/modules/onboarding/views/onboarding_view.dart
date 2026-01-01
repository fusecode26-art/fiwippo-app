import 'package:fiwippo_ecommerce_app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:fiwippo_ecommerce_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            itemCount: controller.onboardingData.length,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              final data = controller.onboardingData[index];
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(data['image']!, fit: BoxFit.cover),
                  Container(color: Colors.black.withOpacity(0.4)),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 120,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            data['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            data['desc']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 70),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                controller.pageController.animateToPage(
                  controller.onboardingData.length - 1,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.onboardingData.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: controller.currentIndex.value == index
                              ? 20
                              : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: controller.currentIndex.value == index
                                ? Colors.white
                                : Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    );
                  }),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Obx(
                      () => ElevatedButton(
                        onPressed: () {
                          if (controller.currentIndex.value ==
                              controller.onboardingData.length - 1) {
                            Get.offAllNamed(Routes.AUTH_SELECT);
                          } else {
                            controller.nextPage();
                          }
                        },
                        child: Text(
                          controller.currentIndex.value ==
                                  controller.onboardingData.length - 1
                              ? "Continue"
                              : "Next",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
