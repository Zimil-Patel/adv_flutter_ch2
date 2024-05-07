import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  HomeModel homeModel = HomeModel();

  bool isDatePickerVisible = false;
  bool isTimerPickerVisible = false;

  setTabIndex(int index) {
    homeModel.tabIndex = index;
    notifyListeners();
  }

  toggleVisibilityOfDatePicker() {
    isDatePickerVisible = !isDatePickerVisible;
    notifyListeners();
  }

  void toggleVisibilityOfTimerPicker() {
    isTimerPickerVisible = !isTimerPickerVisible;
    notifyListeners();
  }
}
