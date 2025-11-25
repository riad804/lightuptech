import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lightuptech/generated/assets.dart';

import '../../common_widgets/custom_image_view.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  OnboardView({super.key});

  final pages = [];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: PageView(
    //     controller: controller.pageViewController,
    //     children: [],
    //   ),
    // );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Track your meals easily", style: Get.textTheme.headlineSmall),
            ],
          ),
        ),
      ),
    );
  }
}


