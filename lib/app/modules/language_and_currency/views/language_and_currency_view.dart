import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/language_and_currency_controller.dart';

class LanguageAndCurrencyView extends GetView<LanguageAndCurrencyController> {
  const LanguageAndCurrencyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LanguageAndCurrencyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LanguageAndCurrencyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
