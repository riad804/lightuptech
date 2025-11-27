import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lightuptech/core/theme/text_theme.dart';

class AppTheme {
  // Primary Brand Color
  static const Color primary = Color(0xFFC4E07C);
  static const Color secondary = Color(0xFF183515);
  static const Color scaffoldBg = Color(0xFFECE9DA);
  static const Color cFFFFFF = Color(0xFFFFFFFF);
  static const Color cEEEEEE = Color(0xFFEEEEEE);
  static const Color cD7CA73 = Color(0xFFD7CA73);
  static const Color cFFF8CA = Color(0xFFFFF8CA);
  static const Color cDAF0FE = Color(0xFFDAF0FE);
  static const Color c83B8D9 = Color(0xFF83B8D9);
  static const Color cECE9DA = Color(0xFFECE9DA);
  static const Color cF6F6F6 = Color(0xFFF6F6F6);
  static const Color cE2E8F0 = Color(0xFFE2E8F0);

  static const Color primaryText = Color(0xFF1E1E1E);
  static const Color secondaryText = Color(0xFF5A5955);

  static ThemeData lightTheme = _buildTheme(brightness: Brightness.light);
  static ThemeData darkTheme = _buildTheme(brightness: Brightness.dark);

  static ThemeData _buildTheme({required Brightness brightness}) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      primary: primary,
      secondary: secondary,
      onSecondary: secondaryText,
      onPrimary: primaryText,
      brightness: brightness,
      surface: scaffoldBg,
      onSurface: primaryText,
      outlineVariant: cEEEEEE,
      surfaceContainer: cFFFFFF,
      outline: cE2E8F0, // grey border
      secondaryContainer: cF6F6F6, // off white
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
        titleTextStyle: TextStyle(
          fontFamily: TextFontTheme.fontFamily,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFF01150E),
        ),
      ),

      cardTheme: CardThemeData(
        elevation: 0,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: colorScheme.surfaceContainer,
      ),

      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 24,
        color: colorScheme.outlineVariant,
      ),

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontFamily: TextFontTheme.fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: colorScheme.onSecondaryContainer.withValues(alpha: 0.70),
        ),
        filled: true,
        fillColor: brightness == Brightness.light
            ? colorScheme.surfaceContainer
            : Colors.white10,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.surfaceContainer),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.surfaceContainer, width: 1.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        labelStyle: TextStyle(
          fontFamily: TextFontTheme.fontFamily,
          fontSize: 14.sp,
          color: colorScheme.onSurfaceVariant,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: TextStyle(
              fontFamily: TextFontTheme.fontFamily,
              fontSize: 16.sp, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: TextStyle(
              fontFamily: TextFontTheme.fontFamily,fontSize: 16.sp, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: TextStyle(
              fontFamily: TextFontTheme.fontFamily,fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: BorderSide(color: colorScheme.onPrimary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.r),
          ),
          textStyle: TextStyle(
              fontFamily: TextFontTheme.fontFamily,
              fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),

      chipTheme: ChipThemeData(
        labelStyle: TextStyle(
            fontFamily: TextFontTheme.fontFamily,fontSize: 14.sp),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: TextStyle(
            fontFamily: TextFontTheme.fontFamily,color: colorScheme.onInverseSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titleTextStyle: TextStyle(
          fontFamily: TextFontTheme.fontFamily,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        contentTextStyle: TextStyle(
          fontFamily: TextFontTheme.fontFamily,
          fontSize: 14.sp,
          color: colorScheme.onSurfaceVariant,
        ),
      ),

      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        indicatorColor: colorScheme.primaryContainer,
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(fontFamily: TextFontTheme.fontFamily,fontSize: 12.sp, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10,
        backgroundColor: colorScheme.surfaceContainer,
        selectedItemColor: colorScheme.primary.withValues(),
        unselectedItemColor: Colors.black54,
        selectedIconTheme: IconThemeData(size: 28),
        unselectedIconTheme: IconThemeData(size: 24),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
