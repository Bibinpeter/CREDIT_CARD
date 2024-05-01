import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData getAppTheme() {
    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );

    return ThemeData(
      textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.black, fontSize: 18),
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: Colors.white,
        background: Colors.black,
        primary: Colors.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(color: Colors.black),
        labelStyle: const TextStyle(color: Colors.black),
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
