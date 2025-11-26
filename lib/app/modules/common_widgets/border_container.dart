import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/core/theme/app_theme.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padAll(),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainer,
        border: Border.all(
          color: AppTheme.cECE9DA,
          width: 1.w,
        ),
      ),
    );
  }
}
