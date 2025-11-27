import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/routes/app_pages.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../core/constants/app_icons.dart';
import '../../../../../generated/assets.dart';
import '../../../common_widgets/app_icon_widget.dart';
import '../../../common_widgets/custom_image_view.dart';
import '../widgets/role_content_widget.dart';

class RoleSelectScreen extends StatelessWidget {
  const RoleSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -63,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: Assets.imagesCurveHeader,
              height: 205.h,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: context.padAll(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIconWidget(
                    title: "Choose Your Role",
                    caption: "Select how you'd like to use NutriPrime",
                  ),
                  context.vGap(32.h),
                  RoleContentWidget(
                    type: UserRoleType.PATIENT,
                    title: "I'm a Patient",
                    content:
                        'Track meals, connect with nutritionists, and achieve your health goals',
                    icon: AppIcons.user_1,
                    onTap: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                  ),
                  context.v16,
                  RoleContentWidget(
                    type: UserRoleType.NUTRITIONIST,
                    title: "I'm a Nutritionist",
                    content:
                        'Manage patients, create meal plans, and provide professional guidance',
                    icon: AppIcons.user_2,
                    onTap: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
