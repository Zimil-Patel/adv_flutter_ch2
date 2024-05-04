import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/constants.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerBottomBarRow extends StatelessWidget {
  const TimerBottomBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 36, top: 10),
      color: const Color(0xff191a1a),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TimerBottomBarIcons(
            icon: CupertinoIcons.globe,
            name: 'World Clock',
          ),
          TimerBottomBarIcons(
            icon: CupertinoIcons.alarm_fill,
            name: 'Alarm',
          ),
          TimerBottomBarIcons(
            icon: CupertinoIcons.stopwatch_fill,
            name: 'Stopwatch',
          ),
          TimerBottomBarIcons(
            icon: CupertinoIcons.timer,
            name: 'Timers',
            isActive: true,
          ),
        ],
      ),
    );
  }
}

class TimerBottomBarIcons extends StatelessWidget {
  const TimerBottomBarIcons({
    super.key,
    required this.icon,
    required this.name,
    this.isActive = false,
  });

  final IconData icon;
  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: isActive ? primary : Colors.grey.withOpacity(0.6),
          size: height * 0.030,
        ),
        Text(
          name,
          style: TextStyle(
              color: isActive ? primary : Colors.grey.withOpacity(0.7),
              fontSize: height * 0.014),
        )
      ],
    );
  }
}
