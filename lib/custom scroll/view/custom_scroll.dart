import 'package:adv_flutter_ch2/custom%20scroll/view/components/silver_list.dart';
import 'package:adv_flutter_ch2/custom%20scroll/view/components/silver_navigation.dart';
import 'package:flutter/cupertino.dart';

class CustomScrollExample extends StatelessWidget {
  const CustomScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => const CupertinoPageScaffold(
        // CUSTOM SCROLL VIEW
        child: CustomScrollView(
          slivers: [
            //SILVER NAVIGATION BAR
            SilverNavigation(),

            // ILSVER LIST
            PersonsSilverList(),
          ],
        ),
      ),
    );
  }
}
