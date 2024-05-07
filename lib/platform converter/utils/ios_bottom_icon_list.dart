import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/model/bottom_icon_model.dart';
import 'package:flutter/cupertino.dart';

List<BottomIconsModel> iosIconList = [
  BottomIconsModel(
      activeIcon: CupertinoIcons.chat_bubble_2_fill,
      unactiveIcon: CupertinoIcons.chat_bubble_2,
      text: 'Chats'),
  BottomIconsModel(
      activeIcon: CupertinoIcons.arrow_2_circlepath_circle_fill,
      unactiveIcon: CupertinoIcons.arrow_2_circlepath_circle,
      text: 'Status'),
  BottomIconsModel(
      activeIcon: CupertinoIcons.group_solid,
      unactiveIcon: CupertinoIcons.group,
      text: 'Communities'),
  BottomIconsModel(
      activeIcon: CupertinoIcons.phone_solid,
      unactiveIcon: CupertinoIcons.phone,
      text: 'Calls'),
];
