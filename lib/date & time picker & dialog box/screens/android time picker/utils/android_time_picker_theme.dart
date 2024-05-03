import 'package:flutter/material.dart';

class TimePickerCustomTheme {
  static const TimePickerThemeData timePickerThemeData = TimePickerThemeData(
    backgroundColor: Color(0xff303030),
    dialBackgroundColor: Color(0xff545454),
    dayPeriodColor: Colors.teal,
    helpTextStyle: TextStyle(fontSize: 18),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.teal,
    ),
  );
}
