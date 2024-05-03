import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class BottomBarRow extends StatelessWidget {
  const BottomBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        SafeArea(
          child: BlurryContainer(
            blur: 5,
            shadowColor: Colors.grey,
            elevation: 100,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: BottomBarIcons(
                    icon: Icons.home_outlined,
                    name: 'Products',
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: BottomBarIcons(
                    icon: Icons.search_outlined,
                    name: 'Search',
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: BottomBarIcons(
                    icon: Icons.shopping_cart_outlined,
                    name: 'Products',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BottomBarIcons extends StatelessWidget {
  const BottomBarIcons({
    super.key,
    required this.icon,
    required this.name,
  });

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey.withOpacity(0.6),
          size: height * 0.036,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.grey.withOpacity(0.7), fontSize: height * 0.014),
        )
      ],
    );
  }
}
