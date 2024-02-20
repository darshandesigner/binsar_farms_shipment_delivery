import 'package:binsar_farms_shipment_delivery/utils/theme/binsar_theme.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      primarySwatch: AppColors.getMaterialColor(AppColors.primaryColor),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      bottomNavigationBarTheme: bottomNavigationbarTheme(),
      textTheme: textLightTheme);
}
