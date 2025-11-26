import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/app/modules/common_widgets/custom_image_view.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title, this.subTitle, this.image, this.suffixIcon, this.onTapBack, this.onTapProfile, this.onTapSuffix});

  final String title;
  final String? subTitle;
  final String? image;
  final IconData? suffixIcon;
  final Function()? onTapBack;
  final Function()? onTapProfile;
  final Function()? onTapSuffix;

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: context.padH(10.w),
        decoration: BoxDecoration(
          color: context.colors.surface,
        ),
        child: Row(
          children: [
            if (image != null)
            CustomImageView(
              onTap: onTapProfile,
              imagePath: image,
              height: 50.h,
              width: 50.h,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(50),
            ),

            if (onTapBack != null)
              GestureDetector(
                onTap: onTapBack,
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.colors.surfaceContainer,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Icon(AppIcons.left_open_big, size: 20.h,),
                ),
              ),
            context.h8,
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.textTheme.titleLarge),
                if (subTitle != null)
                Text(subTitle!, style: context.textTheme.bodySmall),
              ],
            )),
            if (suffixIcon != null)
            GestureDetector(
              onTap: onTapSuffix,
              child: Container(
                height: 32.h,
                width: 32.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.colors.surfaceContainer,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: Icon(suffixIcon, size: 20.h,),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
