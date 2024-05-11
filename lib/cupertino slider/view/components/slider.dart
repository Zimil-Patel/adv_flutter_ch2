import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/components/brightness_section.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/components/night_shift_section.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/components/raise_to_lock.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/components/theme_section.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderDemo extends StatelessWidget {
  const SliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    SliderProvider sliderProviderTrue =
        Provider.of<SliderProvider>(context, listen: true);
    SliderProvider sliderProviderFalse =
        Provider.of<SliderProvider>(context, listen: false);

    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff2f2f7),
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Dispaly & Brightness'),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              CupertinoIcons.back,
              size: height * 0.030,
            ),
            const Text(
              'Settings',
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
      child: CupertinoPageScaffold(
        backgroundColor:
            sliderProviderTrue.isDark ? Colors.black : const Color(0xfff2f2f7),
        child: SafeArea(
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  ThemeSectionWidget(
                      sliderProviderTrue: sliderProviderTrue,
                      sliderProviderFalse: sliderProviderFalse),
                  const SizedBox(
                    height: 14 * 2,
                  ),
                  BrightnessSection(
                      sliderProviderTrue: sliderProviderTrue,
                      sliderProviderFalse: sliderProviderFalse),
                  const SizedBox(
                    height: 14,
                  ),
                  const NightShiftSection(),
                  const SizedBox(
                    height: 14 * 2,
                  ),
                  LockSection(
                      sliderProviderTrue: sliderProviderTrue,
                      sliderProviderFalse: sliderProviderFalse),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
