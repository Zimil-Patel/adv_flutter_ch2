import 'package:adv_flutter_ch2/platform%20converter/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionsIcons extends StatelessWidget {
  const ActionsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);
    return provider.isAndroid
        ? const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              //  CAMERA
              Icon(
                Icons.camera_alt_outlined,
              ),

              //  ADD BUTTON
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              //  CAMERA
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: const Icon(
                  CupertinoIcons.camera_fill,
                  color: Colors.black,
                  size: 20,
                ),
              ),

              //  ADD BUTTON
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  CupertinoIcons.add_circled_solid,
                  color: primaryGreen,
                ),
              )
            ],
          );
  }
}
