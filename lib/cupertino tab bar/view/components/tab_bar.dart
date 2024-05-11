import 'package:adv_flutter_ch2/cupertino%20tab%20bar/constants.dart';
import 'package:flutter/cupertino.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Tab Bar'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[...tabItemList],
        ),
        tabBuilder: (BuildContext context, int index) {
          return Center(
              child: Text(
            '${screensList[index]} Screen',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ));
        },
      ),
    );
  }
}
