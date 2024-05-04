import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/view/android_date_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/view/android_time_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/ios_date_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/ios_time_picker.dart';
import 'package:adv_flutter_ch2/global%20app%20list/screens/model/app_list_model.dart';

List<AppModel> appList = [
  AppModel(
    title: '2.1.1:  Android date picker',
    widget: const AndroidDatePicker(),
  ),
  AppModel(
    title: '2.1.2:  Android time picker',
    widget: const AndroidTimePicker(),
  ),
  AppModel(
    title: '2.1.3:  Cupertino date picker',
    widget: const CupertinoDatePickerExample(),
  ),
  AppModel(
    title: '2.1.4:  Cupertino time picker',
    widget: const CupertinoTimePickerExample(),
  ),
];
