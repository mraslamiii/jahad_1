import 'package:class_flutter/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  AppColors colors = AppColors();

  return ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,

      unselectedItemColor: Colors.grey,
    ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 20)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24))))),
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.w400, color: colors.onPrimaryColor),
          headlineMedium: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 30, color: Colors.black),
          titleLarge: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20),
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
