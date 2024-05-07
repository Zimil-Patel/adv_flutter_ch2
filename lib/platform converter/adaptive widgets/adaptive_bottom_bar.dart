import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/bottom_icon_cupertino.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/bottom_icon_material.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/android_bottom_icon_list.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/ios_bottom_icon_list.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// #f7f7f7
class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    androidIconList.length,
                    (index) => BottomBarIconWithLable(
                          index: index,
                          model: androidIconList[index],
                        )),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    iosIconList.length,
                    (index) => CupertinoBottomBarIconWithLable(
                          index: index,
                          model: iosIconList[index],
                        )),
              ),
            ],
          );
  }
}
