import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFontTheme {
  static TextTheme textTheme(ColorScheme colorScheme) {
    return TextTheme(
      displayLarge:
      GoogleFonts.inter(fontSize: 56,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),
      displayMedium:
      GoogleFonts.inter(fontSize: 45,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),
      displaySmall:
      GoogleFonts.inter(fontSize: 36,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface),

      headlineLarge:
      GoogleFonts.inter(fontSize: 32,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),
      headlineMedium:
      GoogleFonts.inter(fontSize: 28,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),
      headlineSmall:
      GoogleFonts.inter(fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),

      titleLarge:
      GoogleFonts.inter(fontSize: 22,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface),
      titleMedium:
      GoogleFonts.inter(fontSize: 18,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface),
      titleSmall:
      GoogleFonts.inter(fontSize: 16,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface),

      bodyLarge:
      GoogleFonts.inter(fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),
      bodyMedium:
      GoogleFonts.inter(fontSize: 14,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),
      bodySmall:
      GoogleFonts.inter(fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface),

      labelLarge:
      GoogleFonts.inter(fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
      labelMedium:
      GoogleFonts.inter(fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
      labelSmall:
      GoogleFonts.inter(fontSize: 11,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary),
    );
  }
}