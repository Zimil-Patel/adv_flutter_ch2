import 'package:adv_flutter_ch2/cupertino%20segement%20control/view/segement.dart';
import 'package:flutter/cupertino.dart';

class SegmentScreen extends StatelessWidget {
  const SegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: SegmentDemo(),
    );
  }
}
