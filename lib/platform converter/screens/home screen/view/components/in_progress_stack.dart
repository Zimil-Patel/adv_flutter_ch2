import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InProgressStack extends StatelessWidget {
  const InProgressStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AdpativeIndicator(),
          SizedBox(
            height: 20,
          ),
          Text('Loading...'),
        ],
      ),
    );
  }
}
