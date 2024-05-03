import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20time%20picker/provider/time_picker_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AndroidTimePickerProvider providerFalse =
        Provider.of<AndroidTimePickerProvider>(context, listen: false);
    AndroidTimePickerProvider providerTrue =
        Provider.of<AndroidTimePickerProvider>(context, listen: true);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              providerFalse.selectTime(context: context);
            },
            child: Text(
              'Pick Time',
              style: TextStyle(
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Text(providerTrue.timePickerModel.selectedTime),
        ],
      ),
    );
  }
}
