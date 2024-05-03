import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/model/ios_date_picker_model.dart';
import 'package:flutter/material.dart';

class IosDtaePickerProvider extends ChangeNotifier {
  IosDatePickerModel model = IosDatePickerModel();

  void refreshValue(Object value) {
    model.date = value as DateTime;

    notifyListeners();
  }
}
