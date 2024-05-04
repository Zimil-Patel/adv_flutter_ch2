import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/constants.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/view/components/circle_button.dart';
import 'package:flutter/material.dart';

class CancelStartButton extends StatelessWidget {
  const CancelStartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleButton(
          backgroundColor: secondary,
          lable: 'Cancel',
          txtColor: secondarytxt,
        ),
        CircleButton(
          backgroundColor: surface,
          lable: 'Start',
          txtColor: primarytxt,
        ),
      ],
    );
  }
}
