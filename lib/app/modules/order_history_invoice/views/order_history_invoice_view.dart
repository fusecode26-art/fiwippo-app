import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_history_invoice_controller.dart';

class OrderHistoryInvoiceView extends GetView<OrderHistoryInvoiceController> {
  const OrderHistoryInvoiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderHistoryInvoiceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OrderHistoryInvoiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
