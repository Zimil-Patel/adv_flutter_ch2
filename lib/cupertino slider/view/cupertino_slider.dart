import 'package:adv_flutter_ch2/cupertino%20slider/provider/slider_provider.dart';
import 'package:adv_flutter_ch2/cupertino%20slider/view/components/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CupertinoSliderDemo extends StatelessWidget {
  const CupertinoSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Provider.of<SliderProvider>(context, listen: true).isDark
            ? Brightness.dark
            : Brightness.light,
      ),
      home: const SliderDemo(),
    );
  }
}
