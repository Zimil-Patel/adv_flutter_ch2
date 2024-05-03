import 'dart:math';

import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/model/time_picker_model.dart';
import 'package:flutter/material.dart';

class AndroidTimePickerProvider extends ChangeNotifier {
  AndroidTimePickerModel timePickerModel = AndroidTimePickerModel();

  selectTime({required BuildContext context}) async {
    timePickerModel.time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    log(timePickerModel.time!.period.index);

    if (timePickerModel.time != null) {
      timePickerModel.selectedTime =
          '${(timePickerModel.time!.hour % 12).toString().padLeft(2, '0')}:${timePickerModel.time!.minute.toString().padLeft(2, '0')}:${timePickerModel.time!.period.name}';
    }

    notifyListeners();
  }
}
