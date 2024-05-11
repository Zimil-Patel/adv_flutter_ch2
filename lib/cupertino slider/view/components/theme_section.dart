import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeSectionWidget extends StatelessWidget {
  const ThemeSectionWidget({
    super.key,
    required this.sliderProviderTrue,
    required this.sliderProviderFalse,
  });

  final SliderProvider sliderProviderTrue;
  final SliderProvider sliderProviderFalse;

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      margin: EdgeInsets.zero,
      dividerMargin: 0,
      header: Text(
        'APPEREANCE',
        style: TextStyle(
            color: Colors.grey,
            fontSize: height * 0.016,
            fontWeight: FontWeight.w500),
      ),
      children: [
        // SLIDER
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 10),
                  height: height / 8,
                  width: 60,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/2.4/light.png')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Text('Light'),
                CupertinoCheckbox(
                  value: !sliderProviderTrue.isDark,
                  onChanged: (value) {
                    if (value != null) sliderProviderFalse.toggleTheme(!value);
                  },
                  shape: const CircleBorder(),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 10),
                  height: height / 8,
                  width: 60,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/2.4/dark.png')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Text('Dark'),
                CupertinoCheckbox(
                  value: sliderProviderTrue.isDark,
                  onChanged: (value) {
                    if (value != null) sliderProviderFalse.toggleTheme(value);
                  },
                  shape: const CircleBorder(),
                )
              ],
            ),
          ],
        ),

        // AUTOMATIC
        CupertinoListTile(
          title: const Text('Automatic'),
          trailing: CupertinoSwitch(
            value: sliderProviderTrue.isAutomatic,
            onChanged: (value) {
              sliderProviderFalse.toggleIsAtomatic(value);
            },
          ),
        ),
      ],
    );
  }
}
