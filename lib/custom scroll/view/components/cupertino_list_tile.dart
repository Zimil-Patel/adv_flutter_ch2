import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.isActive = false,
    required this.title,
    this.subTitle,
    this.showCheckedMark = false,
  });

  final bool isActive;
  final String title;
  final String? subTitle;
  final bool showCheckedMark;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile.notched(
      title: Text(
        title,
        style: TextStyle(
          fontSize: height * 0.019,
          fontWeight: FontWeight.w400,
          color: isActive ? Colors.black : Colors.grey.withOpacity(0.6),
        ),
      ),
      subtitle: subTitle != null
          ? Text(
              subTitle!,
              style: TextStyle(
                fontSize: height * 0.014,
                fontWeight: FontWeight.w400,
                color: isActive ? Colors.black : Colors.grey.withOpacity(0.7),
              ),
            )
          : null,
      leading: showCheckedMark
          ? const Icon(CupertinoIcons.checkmark_alt)
          : const Icon(
              CupertinoIcons.checkmark_alt,
              color: Colors.transparent,
            ),
    );
  }
}
