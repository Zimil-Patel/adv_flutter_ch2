import 'package:adv_flutter_ch2/global%20app%20list/screens/view/components/scroll_wheel_list.dart';
import 'package:flutter/material.dart';

class AppListView extends StatelessWidget {
  const AppListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'Tasks List',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
      ),
      body: const ListScrollView(),
    );
  }
}
