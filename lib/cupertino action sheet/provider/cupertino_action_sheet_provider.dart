import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/constants.dart';
import 'package:flutter/cupertino.dart';

class CupertinoActionSheetProviderTwo extends ChangeNotifier {
  showActionSheet({required BuildContext context}) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(
              color: cupertinotxtColor,
            ),
          ),
        ),
        title: const Row(
          children: [
            Text('Title'),
          ],
        ),
        message: const Row(
          children: [
            Text('Message'),
          ],
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text(
              'Default Action',
              style: TextStyle(
                color: cupertinotxtColor,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              'Normal Action',
              style: TextStyle(
                color: cupertinotxtColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            child: const Text(
              'Destructive Action',
              style: TextStyle(),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
