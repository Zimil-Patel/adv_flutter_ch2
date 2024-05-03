import 'package:adv_flutter_ch2/global%20app%20list/global_app.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context, String? title}) {
  return AppBar(
    centerTitle: true,

    //TITLE
    title: Text(
      title ?? 'Chapter 2',
      style: TextStyle(
        fontSize: height * 0.03,
        fontWeight: FontWeight.w600,
      ),
    ),

    //LEADING
    leading: IconButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const GlobalApp(),
            ));
      },
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    ),
  );
}
