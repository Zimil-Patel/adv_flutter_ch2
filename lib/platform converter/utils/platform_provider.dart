import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier {
  bool isAndroid = false;

  toggleMode(bool value) {
    isAndroid = value;
    notifyListeners();
  }
}
