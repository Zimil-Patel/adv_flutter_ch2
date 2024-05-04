import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTimerPickerDialog extends StatelessWidget {
  const CupertinoTimerPickerDialog({
    super.key,
    required this.duration,
  });

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height / 24,
        ),
        SizedBox(
          height: height / 4.5,
          child: CupertinoTimerPicker(
            initialTimerDuration: duration,
            onTimerDurationChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
