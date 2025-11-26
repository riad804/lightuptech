import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/core/theme/app_theme.dart';

enum UserRoleType {PATIENT, NUTRITIONIST}

class RoleContentWidget extends StatelessWidget {
  const RoleContentWidget({super.key, required this.type, required this.title, required this.content, required this.icon});

  final UserRoleType type;
  final String title;
  final String content;
  final IconData icon;

  bool get isPatient => type == UserRoleType.PATIENT;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padOnly(left: 16.w, right: 16.w, top: 20.h, bottom: 20.h),
      decoration: BoxDecoration(
        color: isPatient ? AppTheme.cFFF8CA : AppTheme.cDAF0FE,
        border: Border.all(color: isPatient ? AppTheme.cD7CA73 : AppTheme.c83B8D9, width: 1.r,),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 16.sp, color: context.colors.secondary),
                context.h8,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I'm a Patient", style: context.textTheme.titleSmall),
                      context.v8,
                      Text(
                        "Track meals, connect with nutritionists, and achieve your health goals",
                        style: context.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                context.h24,
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(AppIcons.right_open_big, size: 16.sp,),
          ),
        ],
      ),
    );
  }
}
