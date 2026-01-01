import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/affiliate_dashboard_controller.dart';

class AffiliateDashboardView extends GetView<AffiliateDashboardController> {
  const AffiliateDashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AffiliateDashboardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AffiliateDashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
