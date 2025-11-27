import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/auth/views/screens/role_select_screen.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/app/modules/common_widgets/secondary_button.dart';
import 'package:lightuptech/app/routes/app_pages.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../generated/assets.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            padding: context.padH(32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIconWidget(title: "Your wellness journey starts here", caption: "Discover nutrition plans, track your progress, and stay motivated toward a healthier you."),
                context.vGap(32.h),
                PrimaryButton(onTap: () {
                  Get.offAllNamed(Routes.LOGIN);
                }, text: "Login",),
                context.v16,
                SecondaryButton(onTap: () {
                  Get.toNamed(Routes.SELECT_ROLE);
                }, text: "Register",),
              ],
            ),
          ),
        )
      ],
    );
  }
}
