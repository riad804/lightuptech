import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFontTheme {
  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      displayLarge: GoogleFonts.openSans(fontSize: 56.sp,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),
      displayMedium: GoogleFonts.openSans(fontSize: 45.sp,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),
      displaySmall: GoogleFonts.openSans(fontSize: 36.sp,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),

      headlineLarge: GoogleFonts.openSans(fontSize: 32.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),
      headlineMedium: GoogleFonts.openSans(fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),

      /// common uses from here=====================>
      headlineSmall: GoogleFonts.openSans(fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),

      titleLarge: GoogleFonts.openSans(fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),
      titleMedium: GoogleFonts.openSans(fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface),
      titleSmall: GoogleFonts.openSans(fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface),

      bodyLarge: GoogleFonts.openSans(fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),
      bodyMedium: GoogleFonts.openSans(fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),
      bodySmall: GoogleFonts.openSans(fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),

      labelLarge: GoogleFonts.openSans(fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
      labelMedium: GoogleFonts.openSans(fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
      labelSmall: GoogleFonts.openSans(fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
    );
  }
}