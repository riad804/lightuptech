
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import '../../../generated/assets.dart';
import 'custom_image_view.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({super.key, required this.title, required this.caption, this.icon});

  final String? icon;
  final String title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: icon ?? Assets.imagesAppIconPrimary,
          height: 80.h,
          width: 80.h,
        ),
        context.v24,
        Text(title, style: context.textTheme.headlineSmall, textAlign: TextAlign.center),
        context.v8,
        Text(caption, style: context.textTheme.bodyMedium, textAlign: TextAlign.center),
      ],
    );
  }
}