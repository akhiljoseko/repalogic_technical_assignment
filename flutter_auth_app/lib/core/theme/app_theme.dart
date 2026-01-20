import 'package:flutter/material.dart';

const double _kBorderRadius = 8;

/// Centralized theme configuration for the application.
///
/// This class provides [ThemeData] for both light and dark modes,
/// ensuring a consistent visual identity across the app.
class AppTheme {
  /// The light theme configuration for the application.
  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(_kBorderRadius),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(_kBorderRadius),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(_kBorderRadius),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(_kBorderRadius),
          ),
          borderSide: BorderSide(
            color: colorScheme.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(_kBorderRadius),
          ),
          borderSide: BorderSide(
            color: colorScheme.error,
          ),
        ),
      ),
    );
  }
}
