import 'package:adv_flutter_ch2/cupertino%20action%20sheet/view/components/action_sheet.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExampleTwo extends StatelessWidget {
  const CupertinoActionSheetExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: const ActionSheetBodyTwo(),
    );
  }
}
