import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xff00728B);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color secondaryBackgroundColor = Color(0xffF2F2F2);
  static const Color textColor = Color(0xff000000);
  static const Color lightTextColor = Color(0xff757575);
  static const Color borderColor = Color(0xFFE6E6E6);
  static const Color whiteColor = Color(0xffffffff);
  static const Color lightRedColor = Color(0xffEB6068);
  static const Color lightGreenColor = Color(0xff53BB77);
  static const Color lightGrey = Color(0xFFD8D8D8);

  static const Color lightBlack = Color(0xFF1E1E1E);
  // static Color tealColorWithOpacity = const Color(0xFF03D3B4).withOpacity(0.3);
  static const Color tealBlue = Color(0xFF63C4EF);

  //Compliance Status Colors
  static const Color statusGreen = Color(0xFF198754);
  static const Color statusRed = Color(0xFFDC3545);
  static const Color statusYallow = Color(0xFFFFC107);

  static const String primaryColorString = "#00728B";

  static Color hexToColor(String? hexColor) {
    hexColor ??= primaryColorString;
    if (hexColor.startsWith('#')) {
      hexColor = hexColor.substring(1);
    }
    int colorInt = int.tryParse(hexColor, radix: 16) ?? 5141177;
    colorInt = 0xFF000000 | colorInt;
    return Color(colorInt);
  }

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
