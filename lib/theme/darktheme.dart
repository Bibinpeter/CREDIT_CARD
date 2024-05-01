import 'package:flutter/material.dart';

class MyAppDarkTheme {
  static ThemeData getAppTheme() {
    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );

    return ThemeData(
      textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.white, fontSize: 18),
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: Colors.black,
        background: Colors.white,
        primary: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
