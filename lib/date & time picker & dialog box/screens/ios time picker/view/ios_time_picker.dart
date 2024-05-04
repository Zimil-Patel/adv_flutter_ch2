import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/cancel_start_button.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/edit_timers_title.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/recents.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/time_picker.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/timer_bottom_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/timer_details.dart';
import 'package:flutter/material.dart';

class CupertinoTimePickerExample extends StatelessWidget {
  const CupertinoTimePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(hours: 1, minutes: 00);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLES
                      const EditTimersTitle(),

                      //TIMER PICKER
                      CupertinoTimerPickerDialog(duration: duration),

                      // CANCEL START BUTTON
                      const CancelStartButton(),

                      // TIMER DETAILS
                      const TimerDetails(),

                      //RECENTS
                      const Recents()
                    ],
                  ),
                ),
              ),
            ),
            const TimerBottomBarRow(),
          ],
        ),
      ),
    );
  }
}
