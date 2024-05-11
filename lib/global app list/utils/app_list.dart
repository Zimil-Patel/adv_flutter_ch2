import 'package:adv_flutter_ch2/cupertino%20list%20enhanced/view/list_enchanced.dart';
import 'package:adv_flutter_ch2/cupertino%20segement%20control/view/segment_screen.dart';
import 'package:adv_flutter_ch2/cupertino%20settings%20screen/view/cupertino_settings_screen.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/cupertino_slider.dart';
import 'package:adv_flutter_ch2/cupertino%20tab%20bar/view/cupertino_tab_bar_screen.dart';
import 'package:adv_flutter_ch2/custom%20scroll/view/custom_scroll.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/view/android_date_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/view/android_time_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/view/dialog.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/view/ios_action_sheet.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/ios_date_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/ios_time_picker.dart';
import 'package:adv_flutter_ch2/global%20app%20list/screens/model/app_list_model.dart';
import 'package:adv_flutter_ch2/platform%20class%20example/platform.dart';
import 'package:adv_flutter_ch2/platform%20converter/platform_converter.dart';
import 'package:flutter/cupertino.dart';

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
  AppModel(
    title: '2.1.5:  Cupertino action sheet',
    widget: const CupertinoActionSheetExample(),
  ),
  AppModel(
    title: '2.1.5:  Dialog box',
    widget: const DialogExample(),
  ),
  AppModel(
    title: '2.2.1:  Platform converter',
    widget: const PlatformConverter(),
  ),
  AppModel(
    title: '2.2.2:  Platform Indicator',
    widget: const PlatformIndicatorApp(),
  ),
  AppModel(
    title: '2.3.1:  Custom Scroll view',
    widget: const CustomScrollExample(),
  ),
  AppModel(
    title: '2.3.2:  Cupertino List Enhanced',
    widget: const CupertinoListEnchanced(),
  ),
  AppModel(
    title: '2.3.3:  Cupertino Settings',
    widget: const CupertinoSettingScreen(),
  ),
  AppModel(
    title: '2.4.1:  Cupertino Slider',
    widget: const CupertinoSliderDemo(),
  ),
  AppModel(
    title: '2.4.2:  CupertinoSlidingSegmentedControl',
    widget: const SegmentScreen(),
  ),
  AppModel(
    title: '2.4.3:  Cupertino Tab Bar',
    widget: const CupertinoTabBarDemo(),
  ),
];
