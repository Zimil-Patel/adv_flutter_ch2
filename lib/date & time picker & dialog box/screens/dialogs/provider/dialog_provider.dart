import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogProvider extends ChangeNotifier {
  String selectedRingtone = 'None';

  showButtonDialog({required BuildContext context, required String value}) {
    selectedRingtone = value;
    notifyListeners();
  }
}
