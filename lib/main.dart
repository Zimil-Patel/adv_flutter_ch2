import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/provider/andorid_date_picker_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/provider/time_picker_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/provider/ios_date_picker_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/global_app.dart';
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
