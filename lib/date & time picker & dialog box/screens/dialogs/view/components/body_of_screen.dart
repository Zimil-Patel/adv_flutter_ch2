import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/view/components/custom_dialog.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/constants.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyOfScreen extends StatelessWidget {
  const BodyOfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Dialog box'),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CustomDialog();
              },
            );
          },
          child: Text(
            'Show Dialog',
            style: TextStyle(fontSize: height * 0.03, color: cupertinotxtColor),
          ),
        ),
      ),
    );
  }
}
