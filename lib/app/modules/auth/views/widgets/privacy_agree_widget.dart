import 'package:flutter/material.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/app/modules/common_widgets/rich_text_button.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/generated/assets.dart';

class PrivacyAgreeWidget extends StatelessWidget {
  const PrivacyAgreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: Assets.svgCheckBox,
        ),
        context.h8,
        Expanded(
          child: RichTextButton(
              caption: "By creating an account, you agree to our",
              tapText: "Terms & Conditions, Privacy Policy.",
              onTap: () {
                //todo open browser implementation
              },),
        )
      ],
    );
  }
}
