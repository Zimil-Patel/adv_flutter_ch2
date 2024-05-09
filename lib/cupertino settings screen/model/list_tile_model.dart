import 'package:flutter/material.dart';

class TileModel {
  IconData icon;
  Color iconColor, iconBgColor;
  String title;
  String? subtitle;

  TileModel({
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.title,
    this.subtitle,
  });
}

class TileModelWithIconImage {
  String icon;
  Color iconColor, iconBgColor;
  String title;
  String? subtitle;

  TileModelWithIconImage({
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.title,
    this.subtitle,
  });
}
