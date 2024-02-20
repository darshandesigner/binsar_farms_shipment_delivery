import 'package:binsar_farms_shipment_delivery/utils/theme/binsar_theme.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

// ThemeData themeData() {
//   return ThemeData(
//       useMaterial3: true,
//       primaryColor: AppColors.primaryColor,
//       primarySwatch: AppColors.getMaterialColor(AppColors.primaryColor),
//       scaffoldBackgroundColor: AppColors.backgroundColor,
//       bottomNavigationBarTheme: bottomNavigationbarTheme(),
//       textTheme: textLightTheme);
// }

class AppThemeData {
  AppThemeData._();

  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static const Color primaryColor = AppColors.primaryColor;
  static const Color blackText = Color(0xFF252525);

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.primaryColor,
    primaryContainer: AppColors.backgroundColor,
    onPrimary: _darkFillColor,
    secondary: Colors.black,

    /// unused color
    secondaryContainer: Color(0xFFF0F0F0),
    onSecondary: Colors.white,
    surface: Color(0xFFc9c9c9),
    onSurface: Color(0xFF696969),
    background: Color(0xFFFFFFFF),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    brightness: Brightness.light,
  );

  /// currently don't need to use
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    primaryContainer: Color(0xFF1CDEC9),
    secondary: Color(0xFF4D1F7C),
    secondaryContainer: Color(0xFF451B6F),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor, BinsarTextTheme.lightTextTheme(lightColorScheme));
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor, BinsarTextTheme.darkTextTheme(darkColorScheme));

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor, TextTheme textTheme) {
    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        focusColor: focusColor,
        textTheme: textTheme,
        bottomNavigationBarTheme: bottomNavigationbarTheme(),
        primarySwatch: AppColors.getMaterialColor(colorScheme.primary),
        scaffoldBackgroundColor: colorScheme.primaryContainer);
  }

  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const black = FontWeight.w900;
}
