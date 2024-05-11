import 'package:flutter/cupertino.dart';

List<BottomNavigationBarItem> tabItemList = const [
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.person_add),
    label: 'NEW',
    activeIcon: Icon(CupertinoIcons.person_add_solid),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      CupertinoIcons.chat_bubble_2,
    ),
    label: 'CHATS',
    activeIcon: Icon(
      CupertinoIcons.chat_bubble_2_fill,
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      CupertinoIcons.phone,
    ),
    label: 'CALLS',
    activeIcon: Icon(
      CupertinoIcons.phone_fill,
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      CupertinoIcons.settings,
    ),
    label: 'SETTINGS',
    activeIcon: Icon(
      CupertinoIcons.settings_solid,
    ),
  ),
];

List<String> screensList = [
  'NEW',
  'CHATS',
  'CALLS',
  'SETTINGS',
];
