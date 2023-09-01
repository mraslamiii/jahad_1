import 'package:class_flutter/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  AppColors colors = AppColors();

  return ThemeData(
      iconTheme: IconThemeData(color: colors.onPrimaryColor),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.w400, color: colors.onPrimaryColor),
          displaySmall: TextStyle(
              fontSize: 22,
              wordSpacing: 3,
              fontWeight: FontWeight.w300,
              color: Colors.grey.shade200),
          headlineLarge: TextStyle(
              fontWeight: FontWeight.w700, color: colors.onPrimaryColor)),
      // primaryColor: colors.primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: colors.primaryColor,
        primaryContainer: colors.primaryContainer,
        onPrimary: colors.onPrimaryColor,
        secondary: colors.accentColor,
        onSecondary: colors.onSecondary,
      ));
}

// ThemeData darkThemeData() {
//   AppColors colors = AppColors();
//
//   return ThemeData(
//       primaryColor: colors.darkPrimaryColor,
//       colorScheme: ColorScheme.fromSwatch().copyWith(
//         primary: colors.darkPrimaryColor,
//         onPrimary: colors.onPrimaryColor,
//         secondary: colors.accentColor,
//         onSecondary: colors.onSecondary,
//       ));
// }
