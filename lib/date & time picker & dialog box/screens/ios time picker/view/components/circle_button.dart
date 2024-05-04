import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20time%20picker/constants.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.txtColor,
    required this.backgroundColor,
    required this.lable,
    this.icon,
    this.size,
  });

  final Color txtColor, backgroundColor;
  final String lable;
  final IconData? icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / (size ?? 12),
      width: height / (size ?? 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: icon != null
          ? Icon(
              icon,
              color: primarytxt,
              size: height * 0.048,
            )
          : Text(
              lable,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: height * 0.022,
                color: txtColor,
              ),
            ),
    );
  }
}
