import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/auth/views/widgets/pass_reset_success_dialog.dart';
import 'package:lightuptech/app/modules/common_widgets/pass_input_field.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../../generated/assets.dart';
import '../../../common_widgets/app_icon_widget.dart';
import '../../controllers/forget_pass_controller.dart';

class InputPasswordScreen extends StatelessWidget {
  const InputPasswordScreen({super.key});

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
                  title: "Create New Password",
                  caption: "Please enter and confirm your new password. You will need to login after you reset.",
                  icon: Assets.imagesAppIconSecondary,
                ),
              ),
              context.v24,
              PassInputField(label: "New Password", hint: "Password", icon: AppIcons.lock_outline),
              context.v24,
              PassInputField(label: "New Password", hint: "Password", icon: AppIcons.lock_outline),
              context.v32,
              PrimaryButton(onTap: () {
                PassResetSuccessDialog.show();
              }, text: "Reset Password",),
              context.v32,
            ],
          ),
        ),
      ),
    );
  }
}
