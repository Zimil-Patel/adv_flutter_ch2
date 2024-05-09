import 'package:adv_flutter_ch2/cupertino%20settings%20screen/model/list_tile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<TileModel> listOne = [
  TileModel(
    title: 'General',
    icon: CupertinoIcons.settings,
    iconColor: Colors.white,
    iconBgColor: Colors.grey.withOpacity(0.5),
  ),
  TileModel(
    title: 'Display & Brightness',
    icon: CupertinoIcons.textformat_size,
    iconColor: Colors.white,
    iconBgColor: const Color(0xff037aff),
  ),
  TileModel(
    title: 'Wallpaper',
    icon: CupertinoIcons.timelapse,
    iconColor: Colors.white,
    iconBgColor: const Color(0xff34aadc),
  ),
  TileModel(
    title: 'Sounds',
    icon: CupertinoIcons.volume_up,
    iconColor: Colors.white,
    iconBgColor: const Color(0xffff2d55),
  ),
  TileModel(
    title: 'Touch ID & Passcode',
    icon: Icons.fingerprint,
    iconColor: Colors.white,
    iconBgColor: const Color(0xffff2d55),
  ),
  TileModel(
    title: 'Privacy',
    icon: CupertinoIcons.hand_raised_fill,
    iconColor: Colors.white,
    iconBgColor: const Color(0xff8e8e93),
  ),
];

List<TileModelWithIconImage> listTwo = [
  TileModelWithIconImage(
    title: 'iCloud',
    subtitle: 'sarah@9to5mac.com',
    icon: 'icloud',
    iconColor: Colors.white,
    iconBgColor: Colors.grey.withOpacity(0.5),
  ),
  TileModelWithIconImage(
    title: 'iTunes & App Store',
    icon: 'appstore',
    iconColor: Colors.white,
    iconBgColor: const Color(0xff037aff),
  ),
  TileModelWithIconImage(
    title: 'Passbook & Apple Pay',
    icon: 'itunes',
    iconColor: Colors.white,
    iconBgColor: const Color(0xff34aadc),
  ),
];

List<TileModelWithIconImage> listThree = [
  TileModelWithIconImage(
    title: 'Mail, Contact, Calendars',
    icon: 'mail',
    iconColor: Colors.white,
    iconBgColor: Colors.grey.withOpacity(0.5),
  ),
  TileModelWithIconImage(
    title: 'Notes',
    icon: 'notes',
    iconColor: Colors.white,
    iconBgColor: const Color(0xff037aff),
  ),
  TileModelWithIconImage(
    title: 'Reminders',
    icon: 'reminders',
    iconColor: Colors.white,
    iconBgColor: const Color(0xff34aadc),
  ),
];
