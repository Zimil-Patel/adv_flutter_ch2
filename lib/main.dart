import 'package:adv_flutter_ch2/cupertino%20action%20sheet/provider/cupertino_action_sheet_provider.dart';
import 'package:adv_flutter_ch2/cupertino%20segement%20control/provider/segment_provider.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/provider/andorid_date_picker_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/provider/time_picker_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/provider/ios_action_sheet_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/provider/ios_date_picker_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/global_app.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Advance Flutter Chapter 2

-> App list

GlobalApp()  - all task in list view
2.1.1:  AndroidDatePicker()
2.1.2: AndroidTimePicker()
2.1.3: CupertinoDatePickerExample()
2.1.4: CupertinoTimePickerExample()
2.1.5: CupertinoActionSheetExample()
2.1.6: DialogExample()
2.2.1: PlatformConverter()
2.2.2: PlatformIndicatorApp()
2.3.1: CustomScrollExample()
2.3.2: CupertinoListEnchanced()
2.3.3: CupertinoSettingScreen()
2.4.1: CupertinoSlider()
2.4.2: SegmentScreen()

*/

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AndroidDatePickerProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => AndroidTimePickerProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => IosDtaePickerProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CupertinoActionSheetProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => DialogProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => PlatformProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SegmentProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CupertinoActionSheetProviderTwo(),
    ),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GlobalApp(),
    );
  }
}
