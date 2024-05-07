import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptivE_bottom_bar.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: [],
          ),
        ),
        !provider.isAndroid ? const BottomBar() : const SizedBox(),
      ],
    );
  }
}
