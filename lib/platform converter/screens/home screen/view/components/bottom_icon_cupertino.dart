import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/model/bottom_icon_model.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CupertinoBottomBarIconWithLable extends StatelessWidget {
  const CupertinoBottomBarIconWithLable({
    super.key,
    required this.index,
    required this.model,
  });

  final int index;
  final BottomIconsModel model;

  @override
  Widget build(BuildContext context) {
    HomeProvider providerFalse =
        Provider.of<HomeProvider>(context, listen: false);
    HomeProvider provider = Provider.of<HomeProvider>(context, listen: true);
    return GestureDetector(
      onTap: () {
        providerFalse.setTabIndex(index);
      },
      child: SizedBox(
        height: height * 0.089,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            index == provider.homeModel.tabIndex
                ? Icon(
                    model.activeIcon,
                    size: height * 0.038,
                  )
                : Icon(
                    model.unactiveIcon,
                    color: Colors.grey,
                    size: height * 0.038,
                  ),
            const Spacer(),
            Text(
              model.text,
              style: TextStyle(
                color: index == provider.homeModel.tabIndex
                    ? Colors.blueAccent
                    : Colors.grey,
                fontSize: height * 0.014,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
