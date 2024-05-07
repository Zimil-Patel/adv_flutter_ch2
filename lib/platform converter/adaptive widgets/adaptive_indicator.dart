import 'package:adv_flutter_ch2/platform%20converter/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdpativeIndicator extends StatelessWidget {
  const AdpativeIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? CircularProgressIndicator(
            color: primaryGreen,
          )
        : const CupertinoActivityIndicator();
  }
}
