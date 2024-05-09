import 'package:adv_flutter_ch2/cupertino%20settings%20screen/utils/setting_list.dart';
import 'package:adv_flutter_ch2/cupertino%20settings%20screen/view/components/setting_list_section_tile.dart';
import 'package:adv_flutter_ch2/cupertino%20settings%20screen/view/components/setting_list_section_wtih_image.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSettingScreen extends StatelessWidget {
  const CupertinoSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => CupertinoPageScaffold(
        backgroundColor: const Color(0xfff2f2f7),
        navigationBar: const CupertinoNavigationBar(
          automaticallyImplyLeading: false,
          middle: Text('Settings'),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top + 50),
          child: CustomScrollView(
            slivers: <SliverList>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SettingListSection(
                      list: listOne,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingListSectioWithImage(
                      list: listTwo,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingListSectioWithImage(
                      list: listThree,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
