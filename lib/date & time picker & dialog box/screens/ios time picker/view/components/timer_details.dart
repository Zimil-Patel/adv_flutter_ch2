import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/constants.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class TimerDetails extends StatelessWidget {
  const TimerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 36),
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      decoration: BoxDecoration(
          color: secondary, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lable',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Timer',
                  style: TextStyle(
                    color: secondarytxt,
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Whem Timer Ends',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.022,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Radar',
                      style: TextStyle(
                        color: secondarytxt,
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: height * 0.02,
                      color: secondarytxt,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
