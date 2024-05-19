import 'package:adv_flutter_ch2/utils/random_color_method.dart';
import 'package:flutter/material.dart';

class SilverGridScreen extends StatelessWidget {
  const SilverGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const SilverGridExample(),
    );
  }
}

class SilverGridExample extends StatelessWidget {
  const SilverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Silver AppBar'),
            expandedHeight: 110,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/2.8/bg.jpeg'),
              ),
            ),
          ),
          SliverGrid.builder(
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: getRandomColor(),
                    ),
                  )),
        ],
      ),
    );
  }
}
