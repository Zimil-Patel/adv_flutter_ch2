import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/home_screen.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlatformConverter extends StatelessWidget {
  const PlatformConverter({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    if (provider.isAndroid) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
    } else {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => const HomeScreen(),
      );
    }
  }
}
