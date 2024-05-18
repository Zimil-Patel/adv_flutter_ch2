import 'package:adv_flutter_ch2/cupertino%20action%20sheet/provider/cupertino_action_sheet_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../global app list/utils/constants.dart';
import '../../constants.dart';

class ActionSheetBodyTwo extends StatelessWidget {
  const ActionSheetBodyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    CupertinoActionSheetProviderTwo providerFalse =
        Provider.of<CupertinoActionSheetProviderTwo>(context, listen: false);

    return Scaffold(
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
    );
  }
}
