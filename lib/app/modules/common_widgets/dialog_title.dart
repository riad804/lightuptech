import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key, required this.title, this.onClose});

  final String title;
  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: context.textTheme.titleMedium),
        if (onClose != null)
          GestureDetector(
            onTap: onClose,
            child: Container(
              height: 24.h,
              width: 24.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: context.colors.onPrimary,
                  width: 1,
                ),
              ),
              child: Icon(Icons.close, color: context.colors.onPrimary, size: 16.sp,),
            ),
          ),
      ],
    );
  }
}
