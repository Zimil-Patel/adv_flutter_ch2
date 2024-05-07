import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier {
  bool isAndroid = true;

  toggleMode(bool value) {
    isAndroid = value;
    notifyListeners();
  }
}
