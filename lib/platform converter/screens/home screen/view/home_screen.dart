import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptivE_bottom_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_navigation_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/action_icons.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/main_screen.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);
    PlatformProvider providerFalse =
        Provider.of<PlatformProvider>(context, listen: false);

    if (provider.isAndroid) {
      return Scaffold(
        appBar: navigationBar(
          context: context,
          title: 'Whatsapp',
          provider: provider,
          providerFalse: providerFalse,
          actions: const ActionsIcons(),
        ),
        body: const MainScreen(),
        bottomNavigationBar: const BottomBar(),
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: navigationBar(
          context: context,
          providerFalse: providerFalse,
          provider: provider,
          actions: const ActionsIcons(),
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.5),
            ),
            child: const Icon(
              CupertinoIcons.ellipsis,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        child: const MainScreen(),
      );
    }
  }
}
