import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';

import 'card_title.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.title, required this.content});

  final CardTitle title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padAll(),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainer,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          title,
          context.v16,
          content,
        ],
      ),
    );
  }
}
