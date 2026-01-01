import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_and_privacy_controller.dart';

class DataAndPrivacyView extends GetView<DataAndPrivacyController> {
  const DataAndPrivacyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataAndPrivacyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataAndPrivacyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
