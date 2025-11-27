import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/pin_input_field.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/app/modules/common_widgets/rich_text_button.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../generated/assets.dart';
import '../../../common_widgets/app_icon_widget.dart';
import '../../controllers/forget_pass_controller.dart';

class InputOtpScreen extends StatelessWidget {
  const InputOtpScreen({super.key});

  ForgetPassController get controller => Get.find<ForgetPassController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: context.padAll(),
          child: Column(
            children: [
              Padding(
                padding: context.padAll(),
                child: AppIconWidget(
                  title: "Verify Account",
                  caption: "Enter the 4-digit code we’ve sent to your email address.",
                  icon: Assets.imagesAppIconSecondary,
                ),
              ),
              PinInputField(
                label: "Enter 4 Digit Code",
                length: 4,
              ),
              context.v12,
              RichTextButton(tapText: "Didn’t Receive Code?", isUnderlined: true, onTap: () {}),
              context.v8,
              Text("Resend code in 00:59"),
              context.v16,
              PrimaryButton(onTap: () {
                controller.pageViewController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
              }, text: "Verify",),
            ],
          ),
        ),
      ),
    );
  }
}
