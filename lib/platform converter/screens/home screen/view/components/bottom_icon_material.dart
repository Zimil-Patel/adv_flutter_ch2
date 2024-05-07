import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/model/bottom_icon_model.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarIconWithLable extends StatelessWidget {
  const BottomBarIconWithLable({
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          index == provider.homeModel.tabIndex
              ? TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 200),
                  tween: Tween<double>(begin: 8, end: height * 0.025),
                  builder: (context, value, child) => Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: value, vertical: height * 0.006),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      model.activeIcon,
                      size: height * 0.024,
                    ),
                  ),
                )
              : Icon(
                  model.unactiveIcon,
                  color: Colors.grey,
                  size: height * 0.026,
                ),
          const SizedBox(
            height: 6,
          ),
          Text(
            model.text,
            style: TextStyle(
              color: index == provider.homeModel.tabIndex
                  ? Colors.black
                  : Colors.grey,
              fontSize: height * 0.016,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
