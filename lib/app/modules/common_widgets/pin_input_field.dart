import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lightuptech/core/extensions/ui_helper_ext.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinInputField extends StatelessWidget {
  const PinInputField({super.key, this.label, this.controller, this.length});

  final TextEditingController? controller;
  final String? label;
  final int? length;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? "Enter 4 Digit Code", style: context.textTheme.bodyMedium),
        context.vGap(14.h),
        PinCodeTextField(
          enablePinAutofill: true,
          keyboardType: TextInputType.number,
          appContext: context,
          length: length ?? 4,
          animationType: AnimationType.fade,
          cursorColor: context.colors.onPrimary,
          backgroundColor: Colors.transparent,
          pinTheme: PinTheme(
            borderWidth: 0,
            activeBorderWidth: 0,
            selectedBorderWidth: 0,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10.r),
            disabledColor: context.colors.surfaceContainer,
            errorBorderColor: Colors.redAccent,
            fieldHeight: 52.h,
            fieldWidth: 77.w,
            activeFillColor: context.colors.surfaceContainer,
            inactiveFillColor: context.colors.surfaceContainer,
            selectedFillColor: context.colors.surfaceContainer,
            activeColor: context.colors.surfaceContainer,
            inactiveColor: context.colors.surfaceContainer,
            selectedColor: context.colors.surfaceContainer,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          controller: controller,
          onCompleted: (value) {},
          onChanged: (value) {},
          onSubmitted: (value) {},
          textStyle: context.textTheme.bodyLarge,
        )
      ],
    );
  }
}
