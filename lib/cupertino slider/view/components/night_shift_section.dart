import 'package:flutter/cupertino.dart';

class NightShiftSection extends StatelessWidget {
  const NightShiftSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      margin: EdgeInsets.zero,
      dividerMargin: 0,
      children: const [
        CupertinoListTile(
          title: Text('Night Shift'),
          additionalInfo: Row(
            children: [
              Text('Sunset to Sunrise'),
              Icon(
                CupertinoIcons.forward,
                color: Color(0xff808080),
              )
            ],
          ),
        ),
      ],
    );
  }
}
