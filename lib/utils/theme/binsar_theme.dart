import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:flutter/material.dart';

BottomNavigationBarThemeData bottomNavigationbarTheme() {
  return const BottomNavigationBarThemeData(
    backgroundColor: AppColors.secondaryBackgroundColor,
    selectedItemColor: AppColors.primaryColor,
    unselectedItemColor: AppColors.lightTextColor,
  );
}

TextTheme textLightTheme = const TextTheme(
    displaySmall: TextStyle(
  color: AppColors.primaryColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
));
