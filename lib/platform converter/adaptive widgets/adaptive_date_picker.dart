import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaptiveDatePicker extends StatelessWidget {
  const AdaptiveDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Consumer<HomeProvider>(
            builder: (BuildContext context, value, Widget? child) => Visibility(
              visible: value.isDatePickerVisible,
              child: DatePickerDialog(
                  firstDate: DateTime(1997), lastDate: DateTime(2024)),
            ),
          )
        : Consumer<HomeProvider>(
            builder: (BuildContext context, value, Widget? child) => Visibility(
              visible: value.isDatePickerVisible,
              child: SizedBox(
                height: 110,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (value) {},
                ),
              ),
            ),
          );
  }
}
