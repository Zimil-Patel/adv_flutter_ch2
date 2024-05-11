import 'package:adv_flutter_ch2/cupertino%20tab%20bar/view/components/tab_bar.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTabBarDemo extends StatelessWidget {
  const CupertinoTabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: TabBarExample(),
    );
  }
}
