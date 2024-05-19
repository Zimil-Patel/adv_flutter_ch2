import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int destinationIndex = 0;

  void setIndex(int value) {
    destinationIndex = value;
    notifyListeners();
  }
}
