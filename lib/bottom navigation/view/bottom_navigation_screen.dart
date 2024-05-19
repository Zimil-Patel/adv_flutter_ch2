import 'package:adv_flutter_ch2/bottom%20navigation/view/components/navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: const NavigationBars(),
    );
  }
}
