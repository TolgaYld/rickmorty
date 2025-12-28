import 'package:core/src/design/spacing.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Premium Color Palette
  // Light
  static const Color _lightBackgroundColor = Color(0xFFF8FAFC); // Slate 50
  static const Color _lightSurfaceColor = Color(0xFFFFFFFF);
  static const Color _lightPrimaryColor = Color(0xFF0F172A); // Slate 900
  static const Color _lightSecondaryColor = Color(
    0xFF10B981,
  ); // Emerald 500 (Portal Green)
  static const Color _lightErrorColor = Color(0xFFEF4444); // Red 500
  static const Color _lightTextColorPrimary = Color(0xFF1E293B); // Slate 800
  static const Color _lightTextColorSecondary = Color(0xFF64748B); // Slate 500

  // Dark
  static const Color _darkBackgroundColor = Color(0xFF020617); // Slate 950
  static const Color _darkSurfaceColor = Color(0xFF0F172A); // Slate 900
  static const Color _darkPrimaryColor = Color(0xFFF8FAFC); // Slate 50
  static const Color _darkSecondaryColor = Color(0xFF34D399); // Emerald 400
  static const Color _darkErrorColor = Color(0xFFF87171); // Red 400
  static const Color _darkTextColorPrimary = Color(0xFFF1F5F9); // Slate 100
  static const Color _darkTextColorSecondary = Color(0xFF94A3B8); // Slate 400

  static const String _fontFamily = 'DMSans';

  // Text Styles
  static TextTheme _buildTextTheme(Color primary, Color secondary) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        color: primary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.0,
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontFamily,
        color: primary,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontFamily,
        color: primary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        color: primary,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        color: secondary,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: TextStyle(
        fontFamily: _fontFamily,
        color: secondary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
    );
  }

  // Component Themes
  static CardThemeData _buildCardTheme(Color surface) => CardThemeData(
    color: surface,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Spacers.l),
      side: BorderSide(
        color: surface == _lightSurfaceColor
            ? Colors.black.withValues(alpha: 0.05)
            : Colors.white.withValues(alpha: 0.05),
        width: 1,
      ),
    ),
    clipBehavior: Clip.antiAlias,
  );

  static InputDecorationTheme _buildInputDecoration(Color primary, Color bg) =>
      InputDecorationTheme(
        filled: true,
        fillColor: bg,
        contentPadding: const EdgeInsets.all(Spacers.m),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Spacers.m),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Spacers.m),
          borderSide: BorderSide(color: primary.withValues(alpha: 0.1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Spacers.m),
          borderSide: BorderSide(color: primary, width: 2),
        ),
        hintStyle: TextStyle(color: primary.withValues(alpha: 0.5)),
      );

  static ElevatedButtonThemeData _buildElevatedButtonTheme(
    Color bg,
    Color fg,
  ) => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: bg,
      foregroundColor: fg,
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        horizontal: Spacers.xl,
        vertical: Spacers.m,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Spacers.m),
      ),
      textStyle: const TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  );

  static NavigationBarThemeData _buildNavigationBarTheme({
    required Color backgroundColor,
    required Color indicatorColor,
    required Color onIndicatorColor,
    required Color onSurfaceColor,
  }) {
    return NavigationBarThemeData(
      height: 60,
      elevation: 0,
      backgroundColor: backgroundColor,
      indicatorColor: indicatorColor,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontFamily: _fontFamily,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: onSurfaceColor,
          );
        }
        return TextStyle(
          fontFamily: _fontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: onSurfaceColor.withValues(alpha: 0.5),
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(size: 22, color: onIndicatorColor);
        }
        return IconThemeData(
          size: 24,
          color: onSurfaceColor.withValues(alpha: 0.5),
        );
      }),
    );
  }

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightBackgroundColor,
    primaryColor: _lightPrimaryColor,
    colorScheme: ColorScheme.light(
      surface: _lightSurfaceColor,
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      error: _lightErrorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: _lightTextColorPrimary,
      outline: _lightTextColorSecondary.withValues(alpha: 0.2),
    ),
    textTheme: _buildTextTheme(
      _lightTextColorPrimary,
      _lightTextColorSecondary,
    ),
    cardTheme: _buildCardTheme(_lightSurfaceColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightBackgroundColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: _lightTextColorPrimary),
      titleTextStyle: TextStyle(
        fontFamily: _fontFamily,
        color: _lightTextColorPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: _buildInputDecoration(
      _lightPrimaryColor,
      Colors.white,
    ),
    elevatedButtonTheme: _buildElevatedButtonTheme(
      _lightPrimaryColor,
      Colors.white,
    ),
    iconTheme: const IconThemeData(color: _lightTextColorPrimary),
    navigationBarTheme: _buildNavigationBarTheme(
      backgroundColor: _lightSurfaceColor,
      indicatorColor: _lightSecondaryColor.withValues(alpha: 0.2),
      onIndicatorColor: _lightSecondaryColor,
      onSurfaceColor: _lightTextColorPrimary,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: _darkBackgroundColor,
    primaryColor: _darkPrimaryColor,
    colorScheme: ColorScheme.dark(
      surface: _darkSurfaceColor,
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      error: _darkErrorColor,
      onPrimary: _darkBackgroundColor,
      onSecondary: _darkBackgroundColor,
      onSurface: _darkTextColorPrimary,
      outline: _darkTextColorSecondary.withValues(alpha: 0.2),
    ),
    textTheme: _buildTextTheme(_darkTextColorPrimary, _darkTextColorSecondary),
    cardTheme: _buildCardTheme(_darkSurfaceColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkBackgroundColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: _darkTextColorPrimary),
      titleTextStyle: TextStyle(
        fontFamily: _fontFamily,
        color: _darkTextColorPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: _buildInputDecoration(
      _darkPrimaryColor,
      _darkSurfaceColor,
    ),
    elevatedButtonTheme: _buildElevatedButtonTheme(
      _darkSecondaryColor,
      _darkBackgroundColor,
    ),
    iconTheme: const IconThemeData(color: _darkTextColorPrimary),
    navigationBarTheme: _buildNavigationBarTheme(
      backgroundColor: _darkSurfaceColor,
      indicatorColor: _darkSecondaryColor.withValues(alpha: 0.2),
      onIndicatorColor: _darkSecondaryColor,
      onSurfaceColor: _darkTextColorPrimary,
    ),
  );
}
