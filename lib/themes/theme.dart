import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //*********
  // static color
  //*********
  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextPrimaryColor = Colors.black;
  static const Color _appbarColorLight = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextPrimaryColor = Colors.white;
  static const Color _appbarColorDark = Colors.grey;

  static const Color _iconColor = Colors.white;

  static const Color _accentColor = Color.fromRGBO(74, 217, 217, 1);

  // *****
  // Text style - light
  // *****
  static const TextStyle _lightHeadingText = TextStyle(
      color: _lightTextPrimaryColor,
      fontFamily: "Rubik",
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextPrimaryColor,
      fontFamily: "Rubik",
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
  );

  // *****
  // Text style - Dark
  // *****
  static const TextStyle _darkHeadingText = TextStyle(
      color: _darkTextPrimaryColor,
      fontFamily: "Rubik",
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static const TextStyle _darkBodyText = TextStyle(
      color: _darkTextPrimaryColor,
      fontFamily: "Rubik",
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkHeadingText,
    bodyLarge: _darkBodyText,
  );

  // ********
  // Theme light/dark
  // ********

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: const AppBarTheme(
        color: _appbarColorLight,
        iconTheme: IconThemeData(color: _iconColor),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: _appbarColorLight,
      ),
      colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        secondary: _accentColor,
        primaryContainer: _lightPrimaryVariantColor,
      ),
      textTheme: _lightTextTheme);

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: const AppBarTheme(
        color: _appbarColorDark,
        iconTheme: IconThemeData(color: _iconColor),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: _appbarColorDark,
      ),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
        secondary: _accentColor,
        primaryContainer: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme);
}
