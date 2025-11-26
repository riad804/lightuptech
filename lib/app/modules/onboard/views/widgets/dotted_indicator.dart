import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

class DottedIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const DottedIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final isActive = i == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: context.marginH(6),
          width: isActive ? 30.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFFCDE986) : Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
        );
      }),
    );
  }
}
