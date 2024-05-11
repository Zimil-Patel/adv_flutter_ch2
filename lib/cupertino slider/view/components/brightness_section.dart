import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrightnessSection extends StatelessWidget {
  const BrightnessSection({
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
        'BRIGHTNESS',
        style: TextStyle(
            color: Colors.grey,
            fontSize: height * 0.016,
            fontWeight: FontWeight.w500),
      ),
      footer: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Text(
          'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.',
          style: TextStyle(
              color: Colors.grey,
              fontSize: height * 0.017,
              fontWeight: FontWeight.w400),
        ),
      ),
      children: [
        // SLIDER
        Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            const Icon(
              CupertinoIcons.sun_min_fill,
              color: Color(0xff808080),
            ),
            Expanded(
              child: CupertinoSlider(
                min: 0,
                max: 10,
                value: sliderProviderTrue.sliderValue,
                onChanged: (value) {
                  sliderProviderFalse.setSliderValue(value);
                },
              ),
            ),
            const Icon(
              CupertinoIcons.sun_max_fill,
              color: Color(0xff808080),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),

        // TRUE TONE
        CupertinoListTile(
          title: const Text('True Tone'),
          trailing: CupertinoSwitch(
            value: sliderProviderTrue.isTruTone,
            onChanged: (value) {
              sliderProviderFalse.toggleTruTone(value);
            },
          ),
        ),
      ],
    );
  }
}
