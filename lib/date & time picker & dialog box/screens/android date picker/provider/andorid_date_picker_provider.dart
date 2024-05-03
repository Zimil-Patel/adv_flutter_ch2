import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/model/android_date_picker_model.dart';
import 'package:flutter/material.dart';

class AndroidDatePickerProvider extends ChangeNotifier {
  AndroidDatePickerModel dateModel = AndroidDatePickerModel();

  updateSelectedDate({required BuildContext context}) async {
    dateModel.selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1947),
      lastDate: DateTime(2024),
    );

    if (dateModel.selectedDate != null) {
      dateModel.txtDate = TextEditingController(
          text:
              '${dateModel.selectedDate!.day}/${dateModel.selectedDate!.month}/${dateModel.selectedDate!.year}');
    }

    notifyListeners();
  }
}
