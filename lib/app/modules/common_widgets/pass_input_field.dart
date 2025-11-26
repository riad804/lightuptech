import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/constants/app_icons.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/theme/app_theme.dart';

class PassInputField extends StatelessWidget {
  const PassInputField({
    super.key,
    required this.label,
    required this.hint,
    this.controller,
    this.icon,
    this.validator,
    this.isOnDialog = false,
  });

  final String label;
  final String hint;
  final TextEditingController? controller;
  final IconData? icon;
  final String Function(String?)? validator;
  final bool isOnDialog;

  @override
  Widget build(BuildContext context) {
    final _subject = BehaviorSubject.seeded(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodyMedium!.copyWith(
            color: AppTheme.primaryText,
            fontWeight: FontWeight.w500,
          ),
        ),
        context.v8,
        StreamBuilder(
          stream: _subject.stream,
          builder: (context, snap) {
            bool isObscure = snap.data ?? false;
            return TextFormField(
              controller: controller,
              obscureText: isObscure,
              decoration: InputDecoration(
                prefixIcon: icon != null ? Icon(icon) : null,
                hintText: hint,
                fillColor: isOnDialog ? context.colors.secondaryContainer : context.colors.surfaceContainer,
                suffixIcon: IconButton(
                  onPressed: () {
                    _subject.add(!_subject.value);
                  },
                  icon: Icon(
                    isObscure ? AppIcons.eye_slash : AppIcons.eye,
                    size: 16.sp,
                  ),
                ),
              ),
              validator: validator,
            );
          },
        ),
      ],
    );
  }
}
