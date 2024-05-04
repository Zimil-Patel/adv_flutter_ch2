import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/constants.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/provider/ios_action_sheet_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    CupertinoActionSheetProvider providerFalse =
        Provider.of(context, listen: false);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar(context: context, title: 'ActionSheet'),
        body: Center(
          child: TextButton(
            onPressed: () {
              providerFalse.showActionSheet(context: context);
            },
            child: Text(
              'Open Action Sheet',
              style:
                  TextStyle(color: cupertinotxtColor, fontSize: height * 0.024),
            ),
          ),
        ),
      ),
    );
  }
}
