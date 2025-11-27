import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/meals_controller.dart';

class MealsView extends GetView<MealsController> {
  const MealsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MealsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MealsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
