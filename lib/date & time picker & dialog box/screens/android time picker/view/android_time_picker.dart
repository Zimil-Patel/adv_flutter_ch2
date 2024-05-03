import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/utils/android_time_picker_theme.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/view/components/time_picker_dialog.dart';
import 'package:flutter/material.dart';

class AndroidTimePicker extends StatelessWidget {
  const AndroidTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.teal,
          surfaceTint: const Color(0xff303030),
          brightness: Brightness.dark,
          seedColor: const Color(0xff303030),
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
            elevation: 4,
            scrolledUnderElevation: 0,
            surfaceTintColor: Colors.black,
            backgroundColor: Colors.black),
        timePickerTheme: TimePickerCustomTheme.timePickerThemeData,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar(context: context, title: 'TimePicker'),
        body: const TimePicker(),
      ),
    );
  }
}
