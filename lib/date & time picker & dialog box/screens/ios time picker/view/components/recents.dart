import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/constants.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/circle_button.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class Recents extends StatelessWidget {
  const Recents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Recenets',
            style: TextStyle(
              fontSize: height * 0.021,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: secondarytxt,
          thickness: 0.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20:00',
                  style: TextStyle(
                    fontSize: height * 0.06,
                    fontWeight: FontWeight.w300,
                    color: secondarytxt,
                  ),
                ),
                Text(
                  '20 min',
                  style: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w600,
                    color: secondarytxt,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: CircleButton(
                txtColor: primarytxt,
                backgroundColor: surface,
                lable: 'Play',
                icon: Icons.play_arrow_rounded,
                size: 14.5,
              ),
            )
          ],
        ),
        Divider(
          color: secondarytxt,
          thickness: 0.4,
        ),
      ],
    );
  }
}
