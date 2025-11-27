import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lightuptech/app/modules/auth/views/screens/input_email_screen.dart';
import 'package:lightuptech/app/modules/auth/views/screens/input_otp_screen.dart';
import 'package:lightuptech/app/modules/auth/views/screens/input_password_screen.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/primary_button.dart';
import 'package:lightuptech/app/modules/common_widgets/rich_text_button.dart';
import 'package:lightuptech/app/modules/common_widgets/text_input_field.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import '../../../../generated/assets.dart';
import '../controllers/forget_pass_controller.dart';

class ForgetPassView extends GetView<ForgetPassController> {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          InputEmailScreen(),
          InputOtpScreen(),
          InputPasswordScreen(),
        ],
      ),
    );
  }
}
