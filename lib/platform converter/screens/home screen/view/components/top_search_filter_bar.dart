import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adpative_button.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonWithLable(
                    isActive: true,
                    lable: 'All',
                  ),
                  ButtonWithLable(
                    lable: 'Unread',
                  ),
                  ButtonWithLable(
                    lable: 'Personal',
                  ),
                  ButtonWithLable(
                    lable: 'Business',
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: height * 0.13),
                Text(
                  'Chats',
                  style: TextStyle(
                    fontSize: height * 0.036,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Expanded(child: CupertinoSearchTextField()),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.filter_list_rounded),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ButtonWithLable(
                          isActive: true,
                          lable: 'All',
                        ),
                        ButtonWithLable(
                          lable: 'Unread',
                        ),
                        ButtonWithLable(
                          lable: 'Personal',
                        ),
                        ButtonWithLable(
                          lable: 'Business',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
