import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.height, this.icon, required this.onTap, this.child, this.text});

  final Widget? child;
  final String? text;
  final double? height;
  final IconData? icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      child: ElevatedButton(
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
              Text(text!),
            if (icon != null)
              SizedBox(width: 10.w),
            if (icon != null)
              Icon(icon),
          ],
        ),
      ),
    );
  }
}