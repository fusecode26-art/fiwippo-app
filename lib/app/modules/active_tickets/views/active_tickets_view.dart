import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/active_tickets_controller.dart';

class ActiveTicketsView extends GetView<ActiveTicketsController> {
  const ActiveTicketsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActiveTicketsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ActiveTicketsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
