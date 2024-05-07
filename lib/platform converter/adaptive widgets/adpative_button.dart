import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonWithLable extends StatelessWidget {
  const ButtonWithLable(
      {super.key, required this.lable, this.isActive = false});

  final String lable;
  final isActive;

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                foregroundColor: const MaterialStatePropertyAll(
                  Color(0xff6c7c8a),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  isActive ? const Color(0xffe1fef3) : const Color(0xfff1f2f6),
                ),
              ),
              // borderRadius: BorderRadius.circular(26),
              // color:

              onPressed: () {},
              child: Text(
                lable,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoButton(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              borderRadius: BorderRadius.circular(26),
              color:
                  isActive ? const Color(0xffe7f2ff) : const Color(0xfff6f6f6),
              onPressed: () {},
              child: Text(
                lable,
                style: TextStyle(
                  fontSize: 14,
                  color: isActive ? Colors.blueAccent : const Color(0xff848287),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
