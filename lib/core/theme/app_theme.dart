import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lightuptech/core/theme/text_theme.dart';

class AppTheme {
  // Primary Brand Color
  static const Color primary = Color(0xFFC4E07C);
  static const Color secondary = Color(0xFF183515);
  static const Color scaffoldBg = Color(0xFFECE9DA);
  static const Color cFFFFFF = Color(0xFFFFFFFF);
  static const Color cEEEEEE = Color(0xFFEEEEEE);

  static const Color primaryText = Color(0xFF1E1E1E);
  static const Color secondaryText = Color(0xFF5A5955);

  static ThemeData lightTheme = _buildTheme(brightness: Brightness.light);
  static ThemeData darkTheme = _buildTheme(brightness: Brightness.dark);

  static ThemeData _buildTheme({required Brightness brightness}) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      primary: primary,
      onPrimary: primaryText,
      brightness: brightness,
      surface: scaffoldBg,
      onSurface: primaryText,
      outlineVariant: cEEEEEE,
      surfaceContainer: cFFFFFF,
      outline: cFFFFFF,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: TextFontTheme.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.surface,

      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle:
        GoogleFonts.inter(fontSize: 20,
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface),
      ),

      cardTheme: CardThemeData(
        elevation: 0,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: colorScheme.surfaceContainer,
      ),

      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 24,
        color: colorScheme.outlineVariant,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: brightness == Brightness.light
            ? Colors.grey.shade100
            : Colors.white10,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        labelStyle: GoogleFonts.inter(
          fontSize: 14,
          color: colorScheme.onSurfaceVariant,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      chipTheme: ChipThemeData(
        labelStyle: GoogleFonts.inter(fontSize: 14),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle:
        GoogleFonts.inter(color: colorScheme.onInverseSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        contentTextStyle: GoogleFonts.inter(
          fontSize: 14,
          color: colorScheme.onSurfaceVariant,
        ),
      ),

      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        indicatorColor: colorScheme.primaryContainer,
        labelTextStyle: MaterialStatePropertyAll(
          GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
