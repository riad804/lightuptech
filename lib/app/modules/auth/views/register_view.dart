import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/app_icon_widget.dart';
import 'package:lightuptech/app/modules/common_widgets/pass_input_field.dart';
import 'package:lightuptech/app/modules/common_widgets/rich_text_button.dart';
import 'package:lightuptech/app/modules/common_widgets/secondary_button.dart';
import 'package:lightuptech/app/modules/common_widgets/text_input_field.dart';
import 'package:lightuptech/app/routes/app_pages.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/core/utils/app_snackbar.dart';

import '../../../../generated/assets.dart';
import '../controllers/register_controller.dart';
import 'widgets/privacy_agree_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterController get controller => Get.find<RegisterController>();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: context.padAll(),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIconWidget(
                    title: "Create Account",
                    caption: "Sign up to get started",
                    icon: Assets.imagesAppIconSecondary,
                  ),
                  context.v24,
                  TextInputField(label: "Full Name", hint: "Name", icon: AppIcons.user),
                  context.v16,
                  TextInputField(label: "Location", hint: "Los Angeles, CA", icon: AppIcons.location),
                  context.v16,
                  TextInputField(label: "Email Address", hint: "Email", icon: AppIcons.email),
                  context.v16,
                  PassInputField(label: "Password", hint: "Password", icon: AppIcons.lock_outline),
                  context.v16,
                  PassInputField(label: "Confirm Password", hint: "Password", icon: AppIcons.lock_outline),
                  context.v16,
                  PrivacyAgreeWidget(),
                  context.v24,
                  SecondaryButton(onTap: () {
                    //todo register api implementation

                    AppSnackBar.success("Profile updated");
                  }, text: "Register",),
                  context.v16,
                  RichTextButton(caption: "Have an account?", tapText: "Log In here", onTap: () {
                    Get.offNamed(Routes.LOGIN);
                  }),
                  context.v32,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
