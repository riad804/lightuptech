import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/app/routes/app_pages.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/generated/assets.dart';

class PassResetSuccessDialog extends StatelessWidget {
  const PassResetSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppIconWidget(
            title: "Congrats!",
            caption: "Password reset successful.",
            icon: Assets.imagesAppIconSecondary,
          ),
          context.v32,
          PrimaryButton(onTap: () {
            Get.back();
            Get.offNamed(Routes.LOGIN);
          }, text: "Login"),
        ],
      ),
    );
  }

  static show() => Get.dialog(AlertDialog(
      backgroundColor: Color(0xFFEEEEEE),
      content: PassResetSuccessDialog()));
}
