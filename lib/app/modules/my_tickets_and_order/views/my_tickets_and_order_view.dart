import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_tickets_and_order_controller.dart';

class MyTicketsAndOrderView extends GetView<MyTicketsAndOrderController> {
  const MyTicketsAndOrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyTicketsAndOrderView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyTicketsAndOrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
