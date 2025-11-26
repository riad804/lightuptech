import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, this.child, this.text, this.height, required this.onTap});

  final Widget? child;
  final String? text;
  final double? height;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      child: OutlinedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(56.r),
          // ),
        ),
        child: child ?? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (text != null)
              Text(text!, style: context.textTheme.labelLarge!.copyWith(
                color: context.colors.onSurface,
              )),
          ],
        ),
      ),
    );
  }
}
