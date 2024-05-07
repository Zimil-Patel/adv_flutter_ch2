import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_date_picker.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_timer_picker.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingStack extends StatelessWidget {
  const SettingStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Provider.of<HomeProvider>(context, listen: false)
                      .toggleVisibilityOfDatePicker();
                },
                child: Text(
                  'Toggle DatePikcer',
                  style: TextStyle(fontSize: height * 0.020),
                )),
            const SizedBox(
              height: 20,
            ),
            const AdaptiveDatePicker(),
            TextButton(
                onPressed: () {
                  Provider.of<HomeProvider>(context, listen: false)
                      .toggleVisibilityOfTimerPicker();
                },
                child: Text(
                  'Toggle TimerPicker',
                  style: TextStyle(fontSize: height * 0.020),
                )),
            const SizedBox(
              height: 20,
            ),
            const AdaptiveTimerPicker(),
          ],
        ),
      ),
    );
  }
}
