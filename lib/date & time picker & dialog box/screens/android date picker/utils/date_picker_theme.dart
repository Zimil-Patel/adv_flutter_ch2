import 'package:flutter/material.dart';

class DataPickerCustomTheme {
  static const DatePickerThemeData datePickerThemeData = DatePickerThemeData(
    headerBackgroundColor: Colors.teal,
    surfaceTintColor: Color(0xff303030),
    backgroundColor: Color(0xff303030),
    dividerColor: Colors.white,
    headerForegroundColor: Colors.white,
    weekdayStyle: TextStyle(color: Colors.teal),
    headerHelpStyle: TextStyle(fontSize: 18),
    inputDecorationTheme: InputDecorationTheme(),
  );
}
