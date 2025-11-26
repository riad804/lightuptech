import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/app/modules/common_widgets/secondary_button.dart';
import 'package:lightuptech/app/modules/onboard/controllers/onboard_controller.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../generated/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  OnboardController get controller => Get.find<OnboardController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padH(32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(imagePath: Assets.imagesOnboard),
          context.vGap(32.h),
          CustomImageView(
            imagePath: Assets.imagesAppIconPrimary,
            height: 80.h,
            width: 80.h,
          ),
          context.v8,
          CustomImageView(
            imagePath: Assets.imagesAppTextLogo,
            width: 172.w,
            fit: BoxFit.fitWidth,
          ),
          Text(
            "Your Personalized Nutrition Partner",
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          context.vGap(32.h),
          SecondaryButton(
            onTap: () {
              controller.pageViewController.animateToPage(
                1,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            },
            text: "Get Started",
          ),
        ],
      ),
    );
  }
}
