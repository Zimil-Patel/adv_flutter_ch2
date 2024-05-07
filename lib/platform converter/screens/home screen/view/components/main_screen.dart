import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptivE_bottom_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_indicator.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/provider/home_provider.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/chat_stack.dart';
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
              ChatStack(),
              InProgressStack(),
              InProgressStack(),
              InProgressStack(),
            ],
          ),
        ),
        !provider.isAndroid ? const BottomBar() : const SizedBox(),
      ],
    );
  }
}

class InProgressStack extends StatelessWidget {
  const InProgressStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AdpativeIndicator(),
          SizedBox(
            height: 20,
          ),
          Text('Loading...'),
        ],
      ),
    );
  }
}
