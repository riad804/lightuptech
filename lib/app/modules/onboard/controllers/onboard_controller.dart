import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  final pageViewController = PageController();
  final onBoardingController = PageController();

  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }
}

class OnBoardContent {
  final String title;
  final String caption;
  final Map<String, dynamic> imageTop;
  final Map<String, dynamic> imageBot;

  OnBoardContent({required this.title, required this.caption, required this.imageTop, required this.imageBot});

}