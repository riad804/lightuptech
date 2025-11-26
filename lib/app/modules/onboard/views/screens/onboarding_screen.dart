import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/app/modules/onboard/controllers/onboard_controller.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../generated/assets.dart';
import '../widgets/dotted_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  OnboardController get controller => Get.find<OnboardController>();

  List<OnBoardContent> get onBoardContents => [
    OnBoardContent(
      title: "Track your meals easily",
      caption:
          "Log your daily nutrition with our simple and intuitive food tracking system.",
      imageTop: {
        "image": Assets.imagesOnion,
        "width": 66.w,
        "height": 112.h,
        "y": 110.h,
        "x": -10.w,
      },
      imageBot: {
        "image": Assets.imagesLeaves,
        "width": 47.w,
        "height": 45.h,
        "y": 645.h,
        "x": 345.w,
      },
    ),
    OnBoardContent(
      title: "Connect with certified nutritionists",
      caption:
          "Get personalized guidance from verified nutrition professionals.",
      imageTop: {
        "image": Assets.imagesCarrot,
        "width": 57.w,
        "height": 97.h,
        "y": 121.h,
        "x": -6.w,
      },
      imageBot: {
        "image": Assets.imagesLeaf,
        "width": 28.w,
        "height": 40.h,
        "y": 647.h,
        "x": 364.w,
      },
    ),
    OnBoardContent(
      title: "Stay motivated to reach your goals",
      caption:
          "Earn rewards, track progress, and celebrate your achievements along the way.",
      imageTop: {
        "image": Assets.imagesReverseTree,
        "width": 63.w,
        "height": 73.h,
        "y": 133.h,
        "x": 334.w,
      },
      imageBot: {
        "image": Assets.imagesChilli,
        "width": 42.w,
        "height": 58.h,
        "y": 638.h,
        "x": -4.w,
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ..._buildFloatingImages(),

        Positioned.fill(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 250.h,
                  padding: context.padAll(),
                  child: PageView.builder(
                    controller: controller.onBoardingController,
                    itemCount: onBoardContents.length,
                    onPageChanged: (i) => controller.currentIndex(i),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = onBoardContents[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 600),
                            switchInCurve: Curves.easeIn,
                            switchOutCurve: Curves.easeOut,
                            child: AppIconWidget(
                              title: item.title,
                              caption: item.caption,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                context.vGap(28.h),

                /// INDICATOR
                Obx(
                  () => DottedIndicator(
                    count: onBoardContents.length,
                    currentIndex: controller.currentIndex.value,
                  ),
                ),

                context.vGap(32.h),

                Padding(
                  padding: context.padH(),
                  child: PrimaryButton(
                    onTap: () {
                      if (controller.onBoardingController.page!.toInt() ==
                          onBoardContents.length-1) {
                        controller.pageViewController.jumpToPage(2);
                      } else {
                        controller.onBoardingController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    text: "Next",
                  ),
                ),
              ],
            ),
          ),
        ),
        
        Positioned(
          top: 50.h,
          right: 0,
          child: GestureDetector(
            onTap: () {
              controller.pageViewController.jumpToPage(2);
            },
            child: Padding(
              padding: context.padAll(),
              child: Text("Skip", style: context.textTheme.bodyMedium),
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _buildFloatingImages() {
    return [
      Obx(
        () => AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          top: onBoardContents[controller.currentIndex.value].imageTop["y"],
          left: onBoardContents[controller.currentIndex.value].imageTop["x"],
          child: CustomImageView(
            imagePath: onBoardContents[controller.currentIndex.value]
                .imageTop["image"],
            width: onBoardContents[controller.currentIndex.value]
                .imageTop["width"],
            height: onBoardContents[controller.currentIndex.value]
                .imageTop["height"],
          ),
        ),
      ),
      Obx(
        () => AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          top: onBoardContents[controller.currentIndex.value].imageBot["y"],
          left: onBoardContents[controller.currentIndex.value].imageBot["x"],
          child: CustomImageView(
            imagePath: onBoardContents[controller.currentIndex.value]
                .imageBot["image"],
            width: onBoardContents[controller.currentIndex.value]
                .imageBot["width"],
            height: onBoardContents[controller.currentIndex.value]
                .imageBot["height"],
          ),
        ),
      ),
    ];
  }
}
