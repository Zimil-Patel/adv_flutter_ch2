import 'package:adv_flutter_ch2/utils/random_color_method.dart';
import 'package:flutter/material.dart';

class SilverListScreen extends StatelessWidget {
  const SilverListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const SilverListExamle(),
    );
  }
}

class SilverListExamle extends StatelessWidget {
  const SilverListExamle({super.key});

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
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) => Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: getRandomColor(),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
