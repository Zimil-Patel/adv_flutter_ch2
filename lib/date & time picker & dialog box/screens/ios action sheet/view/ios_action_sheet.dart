import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/view/components/action_sheet.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatelessWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: const ActionSheetBody(),
    );
  }
}
