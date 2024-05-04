import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/utils/date_picker_theme.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/view/components/text_field_for_date.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class AndroidDatePicker extends StatelessWidget {
  const AndroidDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    //VARIABLES USED
    Color primary = const Color(0xff06c4ab);
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: Colors.teal,
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
            elevation: 4,
            scrolledUnderElevation: 0,
            surfaceTintColor: Colors.black,
            backgroundColor: Colors.black),
        datePickerTheme: DataPickerCustomTheme.datePickerThemeData,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: customAppBar(context: context, title: 'DatePicker'),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TEXT FIELD
              TextFieldForDate(primary: primary),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'DD/MM/YYYY',
                  style: TextStyle(fontSize: height * 0.016),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
