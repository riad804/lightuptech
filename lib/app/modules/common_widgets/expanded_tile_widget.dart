import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:rxdart/rxdart.dart';

class ExpandedTileWidget extends StatelessWidget {
  const ExpandedTileWidget({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final _expandedSubject = BehaviorSubject.seeded(false);
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: StreamBuilder(
        stream: _expandedSubject.stream,
        builder: (context, snap) {
          bool isExpanded = snap.data ?? false;
          return ExpansionTile(
            tilePadding: EdgeInsets.zero,
            showTrailingIcon: false,
            backgroundColor: context.colors.surfaceContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.r),
              side: BorderSide(color: context.colors.outline),
            ),
            title: Container(
              padding: context.padAll(),
              decoration: BoxDecoration(
                color: context.colors.surfaceContainer,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: context.textTheme.displaySmall),
                  AnimatedRotation(
                    turns: isExpanded ? 0.25 : 0, // 0.5 turn = 180 degrees
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeOut,
                    child: Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14.r,
                        color: context.colors.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            children: children,
            onExpansionChanged: (bool value) {
              _expandedSubject.add(value);
            },
          );
        }
      ),
    );
  }
}
