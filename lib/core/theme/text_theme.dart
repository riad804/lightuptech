import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//
// class TextFontTheme {
//   static String fontFamily = "Typold";
//
//   static TextTheme textTheme(ColorScheme colorScheme) {
//     return TextTheme(
//       displayLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 56.sp,
//         fontWeight: FontWeight.bold,
//         color: colorScheme.onSurface,
//       ),
//       displayMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 45.sp,
//         fontWeight: FontWeight.bold,
//         color: colorScheme.onSurface,
//       ),
//       displaySmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 36.sp,
//         fontWeight: FontWeight.bold,
//         color: colorScheme.onSurface,
//       ),
//
//       headlineLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 32.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.onSurface,
//       ),
//       headlineMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 28.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.onSurface,
//       ),
//
//       /// common uses from here=====================>
//       headlineSmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 24.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.onSurface,
//       ),
//
//       titleLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 20.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.onSurface,
//       ),
//       titleMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 18.sp,
//         fontWeight: FontWeight.w500,
//         color: colorScheme.onSurface,
//       ),
//       titleSmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w500,
//         color: colorScheme.onSurface,
//       ),
//
//       bodyLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurface,
//       ),
//       bodyMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurface,
//       ),
//       bodySmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w400,
//         color: colorScheme.onSurface,
//       ),
//
//       labelLarge: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.primary,
//       ),
//       labelMedium: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.primary,
//       ),
//       labelSmall: TextStyle(
//         fontFamily: fontFamily,
//         fontSize: 11.sp,
//         fontWeight: FontWeight.w600,
//         color: colorScheme.primary,
//       ),
//     );
//   }
// }

class TextFontTheme {
  static String fontFamily = "Typold";

  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 56.sp,
        fontWeight: FontWeight.w700, // extra-bold (700)
        color: colorScheme.onSurface,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 45.sp,
        fontWeight: FontWeight.w700, // extra-bold
        color: colorScheme.onSurface,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: colorScheme.onSurface,
      ),

      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 32.sp,
        fontWeight: FontWeight.w600, // bold (600)
        color: colorScheme.onSurface,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),

      headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),

      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600, // bold
        color: colorScheme.onSurface,
      ),
      titleMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500, // medium
        color: colorScheme.onSurface,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: colorScheme.onSurface,
      ),

      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400, // regular
        color: colorScheme.onSurface,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      ),

      labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.primary,
      ),
      labelMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.primary,
      ),
      labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.primary,
      ),
    );
  }
}
