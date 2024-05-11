import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  bool isDark = false;
  double sliderValue = 0;
  bool isTruTone = true;
  bool isRaiseToWake = true;
  bool isAutomatic = false;

  void toggleTheme(bool value) {
    isDark = value;
    notifyListeners();
  }

  void setSliderValue(double value) {
    sliderValue = value;
    notifyListeners();
  }

  void toggleTruTone(bool value) {
    isTruTone = value;
    notifyListeners();
  }

  void toggleIsRaiseToWake(bool value) {
    isRaiseToWake = value;
    notifyListeners();
  }

  void toggleIsAtomatic(bool value) {
    isAutomatic = value;
    notifyListeners();
  }
}
