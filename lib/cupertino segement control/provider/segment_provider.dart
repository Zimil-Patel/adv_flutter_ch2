import 'package:flutter/material.dart';

class SegmentProvider extends ChangeNotifier {
  String segmentIndex = '0';

  void toggleIndex(String index) {
    segmentIndex = index;
    notifyListeners();
  }
}
