import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../core/constants/app_icons.dart';
import '../../../../../generated/assets.dart';
import '../../../common_widgets/app_icon_widget.dart';
import '../../../common_widgets/primary_button.dart';
import '../../../common_widgets/rich_text_button.dart';
import '../../../common_widgets/text_input_field.dart';
import '../../controllers/forget_pass_controller.dart';

class InputEmailScreen extends StatelessWidget {
  const InputEmailScreen({super.key});

  ForgetPassController get controller => Get.find<ForgetPassController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: context.padAll(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: context.padAll(),
                child: AppIconWidget(
                  title: "Forgot Your Password?",
                  caption: "Discover nutrition plans, track your progress, and stay motivated toward a healthier you.",
                  icon: Assets.imagesAppIconSecondary,
                ),
              ),
              TextInputField(label: "", hint: "Email", icon: AppIcons.email),
              context.v16,
              PrimaryButton(onTap: () {
                controller.pageViewController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
              }, text: "Send Recovery Link"),
              context.v16,
              RichTextButton(caption: "Remember it?", tapText: "Log In", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
