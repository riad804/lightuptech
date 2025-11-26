import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension UiHelperExt on BuildContext {

  ColorScheme get colors => Theme.of(this).colorScheme;

  // -----------------------------
  // 🔹 GAPS (vertical + horizontal)
  // -----------------------------

  /// Horizontal gap
  Widget hGap([double value = 16]) => SizedBox(width: value.w);

  /// Vertical gap
  Widget vGap([double value = 16]) => SizedBox(height: value.h);

  // Quick presets
  Widget get h4 => SizedBox(width: 4.w);
  Widget get h8 => SizedBox(width: 8.w);
  Widget get h12 => SizedBox(width: 12.w);
  Widget get h16 => SizedBox(width: 16.w);
  Widget get h24 => SizedBox(width: 24.w);

  Widget get v4 => SizedBox(height: 4.h);
  Widget get v8 => SizedBox(height: 8.h);
  Widget get v12 => SizedBox(height: 12.h);
  Widget get v16 => SizedBox(height: 16.h);
  Widget get v24 => SizedBox(height: 24.h);

  // -----------------------------
  // 🔹 Padding helpers
  // -----------------------------
  EdgeInsets padAll([double value = 16]) => EdgeInsets.all(value.w);
  EdgeInsets padH([double value = 16]) => EdgeInsets.symmetric(horizontal: value.w);
  EdgeInsets padV([double value = 16]) => EdgeInsets.symmetric(vertical: value.h);

  EdgeInsets padOnly({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      EdgeInsets.only(
        left: left.w,
        right: right.w,
        top: top.h,
        bottom: bottom.h,
      );

  // -----------------------------
  // 🔹 Margin helpers
  // -----------------------------
  EdgeInsets marginAll([double value = 16]) => EdgeInsets.all(value.w);
  EdgeInsets marginH([double value = 16]) => EdgeInsets.symmetric(horizontal: value.w);
  EdgeInsets marginV([double value = 16]) => EdgeInsets.symmetric(vertical: value.h);

  EdgeInsets marginOnly({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      EdgeInsets.only(
        left: left.w,
        right: right.w,
        top: top.h,
        bottom: bottom.h,
      );

  // -----------------------------
  // 🔹 Border radius helpers
  // -----------------------------
  BorderRadius radius([double value = 12]) => BorderRadius.circular(value.r);
  BorderRadius radiusOnly({
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
  }) =>
      BorderRadius.only(
        topLeft: Radius.circular(topLeft.r),
        topRight: Radius.circular(topRight.r),
        bottomLeft: Radius.circular(bottomLeft.r),
        bottomRight: Radius.circular(bottomRight.r),
      );

  // -----------------------------
  // 🔹 Box Decorations
  // -----------------------------
  BoxDecoration boxDecoration({
    Color? color,
    double radius = 12,
    List<BoxShadow>? shadow,
    Border? border,
    Gradient? gradient,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius.r),
        boxShadow: shadow,
        border: border,
        gradient: gradient,
      );

  // Soft shadow preset
  List<BoxShadow> get softShadow => [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];

  // -----------------------------
  // 🔹 Quick card container decoration
  // -----------------------------
  BoxDecoration get cardDecoration => BoxDecoration(
    color: Theme.of(this).colorScheme.surface,
    borderRadius: BorderRadius.circular(12.r),
    boxShadow: softShadow,
  );
}
