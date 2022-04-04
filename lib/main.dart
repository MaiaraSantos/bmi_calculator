import 'package:bmi_calculator/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
    theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF090C22),
        primaryColor: const Color(0xFF090C22),
        fontFamily: 'Montserrat',
        cardColor: const Color(0xFF1D1F33),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFEA1556),
        ))),
  ));
}