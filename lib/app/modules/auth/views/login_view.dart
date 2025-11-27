import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/app/modules/common_widgets/pass_input_field.dart';
import 'package:lightuptech/app/modules/common_widgets/secondary_button.dart';
import 'package:lightuptech/app/modules/common_widgets/text_input_field.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../generated/assets.dart';
import '../../../routes/app_pages.dart';
import '../../common_widgets/rich_text_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: Assets.imagesBagOfFruits,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.vGap(180.h),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 28.h,
                        horizontal: 16.w,
                      ),
                      child: Column(
                        children: [
                          AppIconWidget(
                            title: "Welcome Back!",
                            caption: "Log in to continue",
                            icon: Assets.imagesAppIconSecondary,
                          ),
                          context.v32,
                          TextInputField(
                            label: "Email Address",
                            hint: "Email",
                            icon: AppIcons.email,
                          ),
                          context.v16,
                          PassInputField(
                            label: "Password",
                            hint: "Password",
                            icon: AppIcons.lock_outline,
                          ),
                          context.v16,
                          Align(
                            alignment: Alignment.centerRight,
                            child: RichTextButton(
                              tapText: "Forget Password",
                              onTap: () {
                                Get.toNamed(Routes.FORGET_PASS);
                              },
                            ),
                          ),
                          context.v24,
                          SecondaryButton(
                            onTap: () {
                              Get.offNamed(Routes.PATIENT_MAIN);
                            },
                            text: "Login",
                          ),
                        ],
                      ),
                    ),
                    context.v24,
                    RichTextButton(
                      caption: "No account?",
                      tapText: 'Register here',
                      onTap: () {
                        Get.toNamed(Routes.SELECT_ROLE);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
