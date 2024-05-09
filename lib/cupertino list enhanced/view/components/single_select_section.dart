import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleSelectionSection extends StatelessWidget {
  const SingleSelectionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      header: Text(
        'SINGLE SELECTION',
        style: TextStyle(
            color: Colors.grey,
            fontSize: height * 0.014,
            fontWeight: FontWeight.w400),
      ),
      footer: Text(
        'Choose a single item from a list of options.',
        style: TextStyle(color: Colors.grey, fontSize: height * 0.014),
      ),
      dividerMargin: 0,
      children: <CupertinoListTile>[
        CupertinoListTile.notched(
          title: Text(
            'Off',
            style: TextStyle(fontSize: height * 0.019),
          ),
          trailing: const Icon(CupertinoIcons.checkmark_alt),
        ),
        CupertinoListTile.notched(
          title: Text(
            'Wifi',
            style: TextStyle(fontSize: height * 0.019),
          ),
        ),
        CupertinoListTile.notched(
          onTap: () {},
          title: Text(
            'Mobile Data',
            style: TextStyle(
              fontSize: height * 0.019,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
