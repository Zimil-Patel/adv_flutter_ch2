import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:flutter/cupertino.dart';

class LockSection extends StatelessWidget {
  const LockSection({
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
      children: [
        const CupertinoListTile(
          title: Text('Auto-Lock'),
          additionalInfo: Row(
            children: [
              Text('3 Minuutes'),
              Icon(
                CupertinoIcons.forward,
                color: Color(0xff808080),
              )
            ],
          ),
        ),
        CupertinoListTile(
          title: const Text('Raise to Wake'),
          trailing: CupertinoSwitch(
            value: sliderProviderTrue.isRaiseToWake,
            onChanged: (value) {
              sliderProviderFalse.toggleIsRaiseToWake(value);
            },
          ),
        ),
      ],
    );
  }
}
