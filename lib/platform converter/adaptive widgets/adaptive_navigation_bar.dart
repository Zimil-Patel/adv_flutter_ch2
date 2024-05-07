import 'dart:developer';

import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

dynamic navigationBar({
  required BuildContext context,
  String? title,
  Widget? leading,
  Widget? actions,
  required PlatformProvider provider,
  required PlatformProvider providerFalse,
}) {
  if (provider.isAndroid) {
    return AppBar(
      centerTitle: false,
      title: title != null
          ? Text(
              title,
              style: TextStyle(
                color: primaryGreen,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
      leading: leading,
      actions: [
        actions ?? const SizedBox(),
        CupertinoSwitch(
          value: provider.isAndroid,
          onChanged: (value) {
            log('Mode Toggled!');
            providerFalse.toggleMode(value);
          },
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  } else {
    return CupertinoNavigationBar(
      leading: leading,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          actions ?? const SizedBox(),
          CupertinoSwitch(
            value: provider.isAndroid,
            onChanged: (value) {
              log('Mode Toggled!');
              providerFalse.toggleMode(value);
            },
          ),
        ],
      ),
    );
  }
}
