import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/provider/ios_date_picker_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/components/bottom_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/components/cart_details.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/components/field_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CupertinoDatePickerExample extends StatelessWidget {
  const CupertinoDatePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    IosDtaePickerProvider providerTrue =
        Provider.of<IosDtaePickerProvider>(context, listen: true);
    IosDtaePickerProvider providerFalse =
        Provider.of<IosDtaePickerProvider>(context, listen: false);

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
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar(context: context, title: 'DatePicker'),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      const FieldRow(text: 'Name', icon: Icons.person),
                      const FieldRow(text: 'Email', icon: Icons.email),
                      const FieldRow(text: 'Email', icon: Icons.location_on),

                      // DELIVERY TIME
                      FieldRow(
                        icon: Icons.date_range,
                        text: 'Deliver time',
                        showValue: true,
                        provider: providerTrue,
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // CUPERTINO DATE PICKER
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: CupertinoDatePicker(
                          onDateTimeChanged: (value) {
                            providerFalse.refreshValue(value);
                          },
                        ),
                      ),

                      const CartDetails(),

                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const BottomBarRow(),
          ],
        ),
      ),
    );
  }
}
