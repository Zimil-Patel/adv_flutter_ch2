import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaptiveTimerPicker extends StatelessWidget {
  const AdaptiveTimerPicker({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Consumer<HomeProvider>(
            builder: (BuildContext context, value, Widget? child) => Visibility(
              visible: value.isTimerPickerVisible,
              child: TimePickerDialog(
                initialTime: TimeOfDay.now(),
              ),
            ),
          )
        : Consumer<HomeProvider>(
            builder: (BuildContext context, value, Widget? child) => Visibility(
              visible: value.isTimerPickerVisible,
              child: SizedBox(
                height: 110,
                child: CupertinoTimerPicker(
                  onTimerDurationChanged: (value) {},
                ),
              ),
            ),
          );
  }
}
