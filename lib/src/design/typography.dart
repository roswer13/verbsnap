import 'package:flutter/material.dart';
import 'package:verbsnap/src/design/design.dart';

class AppTypography {
  // Prevent instantiation
  AppTypography._();

  // Font families
  static const String _fontFamily = 'Roboto';

  // Display styles
  static TextStyle get displayLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.displayLarge,
    fontWeight: ThemeFontWeight.bold,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static TextStyle get displayMedium => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.displayMedium,
    fontWeight: ThemeFontWeight.bold,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static TextStyle get displaySmall => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.displaySmall,
    fontWeight: ThemeFontWeight.bold,
    height: 1.2,
    letterSpacing: -0.25,
  );

  // Headline styles
  static TextStyle get headlineLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.headlineLarge,
    fontWeight: ThemeFontWeight.semiBold,
    height: 1.3,
  );

  static TextStyle get headlineMedium => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.headlineMedium,
    fontWeight: ThemeFontWeight.semiBold,
    height: 1.3,
  );

  static TextStyle get headlineSmall => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.headlineSmall,
    fontWeight: ThemeFontWeight.semiBold,
    height: 1.3,
  );

  // Title styles
  static TextStyle get titleLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.titleLarge,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );

  static TextStyle get titleMedium => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.titleMedium,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );

  static TextStyle get titleSmall => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.titleSmall,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );

  // Body styles
  static TextStyle get bodyLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.bodyLarge,
    fontWeight: ThemeFontWeight.regular,
    height: 1.5,
  );

  static TextStyle get bodyMedium => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.bodyMedium,
    fontWeight: ThemeFontWeight.regular,
    height: 1.5,
  );

  static TextStyle get bodySmall => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.bodySmall,
    fontWeight: ThemeFontWeight.regular,
    height: 1.5,
  );

  // Label styles
  static TextStyle get labelLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.labelLarge,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );

  static TextStyle get labelMedium => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.labelMedium,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );

  static TextStyle get labelSmall => TextStyle(
    fontFamily: _fontFamily,
    fontSize: ThemeFontSize.labelSmall,
    fontWeight: ThemeFontWeight.medium,
    height: 1.4,
  );
}
