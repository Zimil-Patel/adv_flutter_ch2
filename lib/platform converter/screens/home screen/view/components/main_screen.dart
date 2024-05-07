import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptivE_bottom_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_list_tile.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/top_search_filter_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);
    HomeProvider homeProvider =
        Provider.of<HomeProvider>(context, listen: true);
    return Column(
      children: [
        Expanded(
          child: IndexedStack(
            index: homeProvider.homeModel.tabIndex,
            children: const [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopBar(),

                    SizedBox(
                      height: 8,
                    ),

                    // ListTile
                    AdaptiveListTile(),
                    AdaptiveListTile(),
                    AdaptiveListTile(),
                    AdaptiveListTile(),
                    AdaptiveListTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
        !provider.isAndroid ? const BottomBar() : const SizedBox(),
      ],
    );
  }
}
