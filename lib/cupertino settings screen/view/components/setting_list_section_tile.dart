import 'package:adv_flutter_ch2/cupertino%20settings%20screen/model/list_tile_model.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingListSection extends StatelessWidget {
  const SettingListSection({super.key, required this.list});

  final List<TileModel> list;

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      dividerMargin: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.none,
      children: [
        ...List.generate(
          list.length,
          (index) => CustomListTileForSettings(
            icon: list[index].icon,
            iconBgColor: list[index].iconBgColor,
            iconColor: list[index].iconColor,
            title: list[index].title,
            subtitle: list[index].subtitle,
          ),
        ),
      ],
    );
  }
}

class CustomListTileForSettings extends StatelessWidget {
  const CustomListTileForSettings({
    super.key,
    required this.iconColor,
    required this.iconBgColor,
    required this.title,
    this.subtitle,
    required this.icon,
  });

  final Color iconColor, iconBgColor;
  final String title;
  final String? subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile.notched(
      leading: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: iconBgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: height * 0.023,
        ),
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: height * 0.018,
        color: Colors.grey.withOpacity(0.4),
      ),
    );
  }
}
