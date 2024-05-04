import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/constants.dart';
import 'package:flutter/cupertino.dart';

class CupertinoActionSheetProvider extends ChangeNotifier {
  showActionSheet({required BuildContext context}) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {},
          child: Text(
            'Cancel',
            style: TextStyle(
              color: cupertinotxtColor,
            ),
          ),
        ),
        title: const Text('Favorite Dessert'),
        message: const Text(
            'Please select the best dessert from the options below.'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text(
              'Profiteroles',
              style: TextStyle(
                color: cupertinotxtColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {},
          ),
          CupertinoActionSheetAction(
            child: Text(
              'Cannolis',
              style: TextStyle(
                color: cupertinotxtColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {},
          ),
          CupertinoActionSheetAction(
            child: Text(
              'Trifle',
              style: TextStyle(
                color: cupertinotxtColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
