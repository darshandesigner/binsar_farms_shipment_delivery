import 'package:flutter/material.dart';

class BinsarTextTheme {
  BinsarTextTheme._();
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const black = FontWeight.w900;

  static TextTheme lightTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: bold, color: colorScheme.onPrimary),
      headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: semiBold, color: colorScheme.onPrimary),
      headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: semiBold, color: colorScheme.onPrimary),
      titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: semiBold, color: colorScheme.onPrimary),
      titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: medium, color: colorScheme.onPrimary),
      titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: regular, color: colorScheme.onPrimary),
      bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: medium, color: colorScheme.onPrimary),
      bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: light, color: colorScheme.onPrimary),
      bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: medium, color: colorScheme.onPrimary.withOpacity(0.5)),
      labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary),
      labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary.withOpacity(0.5)),
      labelSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary),
    );
  }

  static TextTheme darkTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 36, fontWeight: regular, color: colorScheme.onPrimary),
      headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: semiBold, color: colorScheme.onPrimary),
      headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: semiBold, color: colorScheme.onPrimary),
      titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: semiBold, color: colorScheme.onPrimary),
      titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: medium, color: colorScheme.onPrimary),
      titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: regular, color: colorScheme.onPrimary),
      bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: medium, color: colorScheme.onPrimary),
      bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: light, color: colorScheme.onPrimary),
      bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: medium, color: colorScheme.onPrimary.withOpacity(0.5)),
      labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary),
      labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary.withOpacity(0.5)),
      labelSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: light, color: colorScheme.onPrimary),
    );
  }
}
