import 'package:adv_flutter_ch2/custom%20scroll/view/components/cupertino_list_tile.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultipleSelectionSection extends StatelessWidget {
  const MultipleSelectionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      header: Text(
        'MULTIPLE SELECTION',
        style: TextStyle(
            color: Colors.grey,
            fontSize: height * 0.014,
            fontWeight: FontWeight.w400),
      ),
      footer: Text(
        'Choose multiple item from a list of options.',
        style: TextStyle(color: Colors.grey, fontSize: height * 0.014),
      ),
      dividerMargin: 0,
      children: const <CustomListTile>[
        CustomListTile(
          title: 'Option one',
          subTitle: 'Disabled and selected',
          showCheckedMark: true,
        ),
        CustomListTile(
          title: 'Option two',
          subTitle: 'With subtitle!',
          isActive: true,
        ),
        CustomListTile(
          title: 'Option three',
          showCheckedMark: true,
          isActive: true,
        ),
        CustomListTile(
          title: 'Option four',
          isActive: true,
        ),
        CustomListTile(
          title: 'Option five',
          subTitle: 'Disabled and not selected',
        ),
      ],
    );
  }
}
