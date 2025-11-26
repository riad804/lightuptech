import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:lightuptech/core/theme/app_theme.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
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
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            hintText: hint,
            fillColor: isOnDialog ? context.colors.secondaryContainer : context.colors.surfaceContainer,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
