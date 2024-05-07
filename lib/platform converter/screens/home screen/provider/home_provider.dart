import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/model/home_model.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  HomeModel homeModel = HomeModel();

  setTabIndex(int index) {
    homeModel.tabIndex = index;
    notifyListeners();
  }
}
